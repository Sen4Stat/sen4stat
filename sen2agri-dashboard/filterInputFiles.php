<div class="panel-group " id="<?php echo $prefix?>_accordion_filter">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="panel-title">
                 <a data-toggle="collapse" data-parent="#<?php echo $prefix?>_accordion_filter" href="#<?php echo $prefix?>_filter">Filter Criteria For Input Files</a>
             </h4>
        </div>
    
        <div id="<?php echo $prefix?>_filter" class="panel-collapse collapse">
         	<div class="panel-body">  

    			<div class="row">
    				<div class="col-md-1"><label >Sensor:</label></div>
    				<div class="col-md-10">
    
    					<div class="row">
    						 <div class="col-md-1 form-group form-group-sm sensor">        												
    							<input class="form-control chkS2" id="<?php echo $prefix?>form_chkS2" type="checkbox" name="sensor" value="S2" checked="checked" disabled>
    							<label class="control-label" for="<?php echo $prefix?>form_chkS2">S2</label>
    						</div> 
    						<div class="col-md-10 form-group form-group-sm sensor">
    							<label class=" control-label" for="<?php echo $prefix?>form_S2Tiles" style="display: block">Tiles</label>                         
    							<textarea class='form-control' style="resize: vertical;" rows="2" name="S2Tiles" id="<?php echo $prefix?>form_S2Tiles"></textarea>
    							<span class="invalidTilesS2"></span>
    						</div>                            					
    					</div>
    					<?php if(!ConfigParams::isSen2Agri()){?>
						<div class="row">
    						 <div class="col-md-1 form-group form-group-sm sensor">
    							<input class="form-control chkS1" id="<?php echo $prefix?>form_chkS1" type="checkbox" name="sensor" value="S1" checked="checked" >
    							<label class="control-label" for="<?php echo $prefix?>_chkS1">S1</label>
    						</div> 
    						<div class="col-md-10 form-group form-group-sm sensor">
    							<label class=" control-label" for="<?php echo $prefix?>_S1Tiles" style="display: block">Tiles</label>
    							<textarea class='form-control' style="resize: vertical;" rows="2" name="S1Tiles" id="<?php echo $prefix?>form_S1Tiles"></textarea>
    							<span class="invalidTilesS1"></span>
    						</div>
    					</div>
    					<?php }?>
    					<div class="row">
    						 <div class="col-md-1 form-group form-group-sm sensor">        												
    							<input class="form-control chkL8" id="<?php echo $prefix?>form_chkL8" type="checkbox" name="sensor" value="L8" checked="checked">
    							<label class="control-label" for="<?php echo $prefix?>form_chkL8">L8</label>
    						</div>   
    						
                     		<div class="col-md-10 form-group form-group-sm sensor">
    							<label class=" control-label" for="<?php echo $prefix?>form_L8Tiles" >Tiles</label>                   							
    							<textarea class='form-control' style="resize: vertical;" rows="2" name="L8Tiles" id="<?php echo $prefix?>form_L8Tiles"></textarea>
    							<span class="invalidTilesL8"></span>
    						</div>          					
    					</div>
    				</div>                     												
    			</div>

    			<div class="form-group form-group-sm" style=" width: 97%;">
    				<label class="control-label">Season:</label>                         
    				<select id="choose_season" name="choose_season" class="form-control" disabled>
    					<option value="" >Select season</option>									
    				</select>                   			 
    			</div>
    			<div class="form-group form-group-sm" style=" width: 97%;">
    				<label class="control-label" for="startdate" >From:</label>
    				<input type="text" name="startdate"  class="schedule_format">                           			 
    				
    				<label class="control-label" for="enddate" >To:</label>
    				<input type="text" name="enddate" class="schedule_format">                           			 
    			</div>
    			<button type="button" class="btn btn-success btn-xs" name="btnFilter" onclick="filter_input_files(this.form.id);">
    				<span class="glyphicon glyphicon-filter" ></span> Filter 
    			</button>
    
    			<button type="button" class="btn btn-success btn-xs" name="btnResetFilter" disabled>
    				<span class="glyphicon glyphicon-refresh" ></span> Reset Filter 
    			</button>
    		</div>
    	</div>
	</div>
</div>