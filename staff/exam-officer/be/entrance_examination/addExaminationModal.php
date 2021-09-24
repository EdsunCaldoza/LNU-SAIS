<!-- ADD EXAMINATION MODULE MODAL -->
<div class="modal fade" id="addExaminationModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action = "be/unit/add.php" method="POST" enctype="multipart/form-data">
                <div class="modal-header">
                    <h4 class="modal-title" id="defaultModalLabel">Add Examination Module</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">clock</i>
                        </span>
                        <select class="form-control show-tick" name="exam_time">
                            <option value="" selected disabled>Set Time Limit</option>
                            <option value="10">10 Minutes</option>
                            <option value="20">20 Minutes</option>
                            <option value="30">30 Minutes</option>
                            <option value="40">40 Minutes</option>
                            <option value="50">50 Minutes</option>
                            <option value="60">60 Minutes</option>
                        </select>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">mode_edit</i>
                        </span>
                        <div class="form-line">
                            <input type="text" class="form-control" name="exam_title" placeholder="Set Module Title" required autofocus>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">settings</i>
                        </span>
                        <div class="form-line">
                            <input type="number" class="form-control" name="exam_questions" placeholder="Set Number of Questions" required autofocus>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">short_text</i>
                        </span>
                        <div class="form-line">
                            <textarea class="form-control" name="exam_description" placeholder="Add Module Description" required autofocus></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-link waves-effect" name="add" id="add" >SAVE CHANGES</button>
                        <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CLOSE</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>