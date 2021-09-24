<?php
    include 'includes/session.php';
    include 'includes/header.php';
    ?>
    <?php
    include 'includes/topbar.php';
    include 'includes/left_sidebar.php';
?>

    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h1>INTERVIEWER</h1>
            </div>
            <!-- Basic Examples -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h3>
                                INTERVIEWER ACCOUNTS
                            </h3>
                            <p>This shows the verified interviewer accounts.
                                Interviewers are the one who will rate the interview performance
                                of the applicants.
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                    <thead>
                                        <tr>
                                            <th>Username</th>
                                            <th>Name</th>
                                            <th>Address</th>
                                            <th>Email</th>
                                            <th>Assigned Program</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- populate table with db data -->
                                        <?php
                                            require 'be/database/db_pdo.php';
                                            $sql = $conn->prepare("SELECT *, tbl_account_staff.id FROM `tbl_account_staff`
                                            LEFT JOIN tbl_course ON tbl_course.id=tbl_account_staff.staff_program WHERE `staff_role` = '4'");
                                            $sql->execute();

                                            while($fetch = $sql->fetch()){
                                        ?>
                                        <tr>
                                            <td><?php echo $fetch['staff_username']?></td>
                                            <td><?php
                                                echo $fetch['staff_first_name'];
                                                echo " ";
                                                echo $fetch['staff_middle_name'];
                                                echo " ";
                                                echo $fetch['staff_last_name'];?>
                                            </td>
                                            <td><?php echo $fetch['staff_address']; ?></td>
                                            <td><?php echo $fetch['staff_email']; ?></td>
                                            <td><?php echo $fetch['course_name']; ?></td>
                                            <td style="text-align: center; width: 5%; vertical-align: middle;">
                                                <a class="btn bg-teal btn-circle waves-effect waves-circle waves-float" href="account_update.php?id=<?php echo $fetch['id']; ?>"><i class="material-icons">edit</i></a>
                                            </td>
                                            <td style="text-align: center; width: 5%; vertical-align: middle;">
                                                <button class="btn bg-red btn-circle waves-effect waves-circle waves-float" data-toggle="modal" data-target="#delete<?php echo $fetch['id']?>" id="btnDelete"><i class="material-icons">delete</i></button>
                                            </td>
                                        </tr>

                                        <?php
                                            include 'be/account_staff/deleteModal.php';
                                            }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php
        include 'includes/logout_modal.php';
        include 'includes/scripts.php';
    ?>
</body>
</html>
