<?php
function add_new_scheduled_jobs_layout($processorId) {
	$db = pg_connect ( 'host=sen2agri-dev port=5432 dbname=sen2agri user=admin password=sen2agri' ) or die ( "Could not connect" );
	$sql_select = "SELECT id,name FROM site	";
	$result = pg_query ( $db, $sql_select ) or die ( "Could not execute." );
	
	$option_site = "";
	while ( $row = pg_fetch_row ( $result ) ) {
		$option ="<option value=\"".$row [0]."\">".$row [1]."</option>";
				
		$option_site = $option_site . $option;
	}

$div =<<<ADDJOB
	<div class="panel_job_container">
	<div class="panel panel-default panel_job">
	<form role="form" name="jobform" method="post" action="dashboard.php" style="padding:10px;">
	<span class="form-group form-group-sm span-scheduled" style=" max-width: 1000px;">
	<label class="control-label control-max-width" for="jobname">Job Name: <input type="text" name="jobname"  class="schedule_format">
	</label></span>
	<input type="hidden" value="$processorId" name="processorId">
	<span class="form-group form-group-sm span-scheduled">
	<label class="control-label control-max-width" for="sitename">Site: 
	<span class="schedule_format">
	<select id="sitename" name="sitename">
	<option value="" selected>Select site</option>$option_site
	</select>
	</span></label>
	</span>
	<span class="form-group form-group-sm span-scheduled">
	<label class="control-label control-max-width" for="schedule"> Schedule: 
	<span class="schedule_format">
	<select id="schedule_add$processorId" name="schedule_add" onchange="selectedScheduleAdd($processorId)">
	<option value="" selected>Select a schedule</option>
	<option value="0">Once</option>
	<option value="1">Cycle</option>
	<option value="2">Repeat</option>
	</select>
	</span></label>
	</span>
	<span class="form-group form-group-sm span-scheduled" id="div_startdate$processorId" style="display:none">
	<label class="control-label" for="startdate" style="display:inline-block;width:150px;">Date: 
	<input type="text" name="startdate" class="startdate schedule_format">
	</label></span>
	<span class="form-group form-group-sm span-scheduled" id="div_repeatafter$processorId" style="display:none">
	<label class="control-label" for="repeatafter" style="display:inline-block;width:150px;">Repeat after: 
	<input type="number" class="schedule_format" id="repeatafter"  name="repeatafter" value="" />
	</label></span>
	<span class="form-group form-group-sm span-scheduled" id="div_oneverydate$processorId" style="display:none">
	<label class="control-label" for="oneverydate" style="display:inline-block;width:150px;">On every: 
	<input type="number" class="schedule_format" id="oneverydate" name="oneverydate" min="1" max="30" step="1" value=""/>
	</label></span>
	<span class="form-group form-group-sm span-scheduled schedule_format">
	<input type="submit" class="btn btn-primary" name="schedule_saveJob" value="Save">
	</span>
	</form>
	</div>
	</div>
ADDJOB;
//ending heredoc; note:no space after ending of heredoc	
	echo $div;
}

function update_scheduled_jobs_layout($processor_id) {
	$db = pg_connect ( 'host=sen2agri-dev port=5432 dbname=sen2agri user=admin password=sen2agri' ) or die ( "Could not connect" );
	
	/*
	 * schedule type
	 * once = 0,
	 * cycle = 1,
	 * repeat=2
	 */
	
	if ($processor_id == '2') {
		$action = "dashboard.php#tab_l3a";
	} elseif ($processor_id == '3') {
		$action = "dashboard.php#tab_l3b";
	} elseif ($processor_id == '4') {
		$action = "dashboard.php#tab_l4a";
	} elseif ($processor_id == '5') {
		$action = "dashboard.php#tab_l4b";
	}elseif ($processor_id == '7'){
		$action = "dashboard.php#tab_l3b_nvdi";
	}

	$sql = "SELECT * from sp_get_dashboard_processor_scheduled_task('$processor_id')";
	$result = pg_query ( $db, $sql ) or die ( "Could not execute." );
	
	while ( $row = pg_fetch_row ( $result ) ) {
		
			if ($row[3] == 0) {
				$startdate = "display:inline-block";
				$repeatafter = "display:none";
				$oneverydate = "display:none";
				
				$selected_once ="selected";
				$selected_cycle ="";
				$selected_repeat ="";

			}elseif ($row[3] == 1){
				$startdate = "display:inline-block";
				$repeatafter = "display:inline-block";
				$oneverydate = "display:none";
				
				$selected_once ="";
				$selected_cycle ="selected";
				$selected_repeat ="";
				

			}elseif ($row[3] == 2){
				$startdate = "display:inline-block";
				$repeatafter = "display:none";
				$oneverydate = "display:inline-block";
				
				$selected_once ="";
				$selected_cycle ="";
				$selected_repeat ="selected";
				
			}
			
		
		// Set up the DOM elements
		// heredoc 
		$div2 = <<<JOB
		<div class="panel_job_container">
		<div class="panel panel-default panel_job">
		<form class="form-inline" role="form" name="jobform" method="post" action="$action" style="padding:10px;">
		<span class="form-group form-group-sm span-scheduled" style=" max-width: 1000px;">
		<label class="control-label control-max-width">Job Name: <span class="schedule_format">$row[1]</span>
		</label>
		<input type="hidden" value="$row[0]" name="scheduledID">
		<span class="form-group form-group-sm span-scheduled">
		<label class="control-label control-max-width" >Site: <span class="schedule_format">$row[2]</span></label>
		</span>
		<span class="form-group form-group-sm span-scheduled">
		<label class="control-label control-max-width" > Schedule:
		<span class="schedule_format">
		<select id="schedule$row[0]" name="schedule" onchange="selectedSchedule($row[0])">
		<option value="0" $selected_once >Once</option>
		<option value="1" $selected_cycle >Cycle</option>
		<option value="2" $selected_repeat >Repeat</option>
		</select>
		</span></label>
		</span>
		<span class="form-group form-group-sm span-scheduled" id="div_startdate$row[0]" style="$startdate">
		<label class="control-label " style="display:inline-block;width:150px;">Date:
		<input type="text" class="startdate schedule_format"  name="startdate" value="$row[4]" >
		</label></span>
		<span class="form-group form-group-sm span-scheduled" id="div_repeatafter$row[0]" style="$repeatafter">
		<label class="control-label" style="display:inline-block;width:150px;">Repeat after :
		<input type="number" class="schedule_format" name="repeatafter" value="$row[5]" />
		</label></span>
		<span class="form-group form-group-sm span-scheduled" id="div_oneverydate$row[0]" style="$oneverydate">
		<label class="control-label" style="display:inline-block;width:150px;">On every: 
		<input type="number" class="schedule_format"  name="oneverydate"value="$row[6]"/>
		</label></span>
		<span class="form-group form-group-sm span-scheduled schedule_format">
		<input type="submit" class="btn btn-primary" name="schedule_submit" value="Save">
		</span>
		</form>
		</div>
		</div>
JOB;
// end of heredoc

		echo $div2;
	}
}

?>
