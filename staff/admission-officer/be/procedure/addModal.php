<!-- ADD MODAL -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action = "be/academic_year/add.php" method="POST" enctype="multipart/form-data">
                <div class="modal-header">
                    <h4 class="modal-title" id="defaultModalLabel">New Admission Procedure</h4>
                    <hr class="default-divider ml-auto">
                </div>
                <div class="modal-body">
                    <div class="form-group form-float">
                        <div class="form-line">
                            <input type="number" class="form-control" name="step" required autofocus>
                            <label class="form-label">Procedure Number</label>
                        </div>
                    </div>
                    <div class="form-group form-float">
                        <div class="form-line">
                            <input type="text" class="form-control" name="description" required autofocus>
                            <label class="form-label">Description</label>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <hr class="default-divider ml-auto">
                    <button type="submit" class="btn btn-link waves-effect" name="add" id="add">SAVE CHANGES</button>
                    <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CLOSE</button>
                </div>
            </form>
        </div>
    </div>
</div>