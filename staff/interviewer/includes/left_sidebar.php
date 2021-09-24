<!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
           <?php
                include 'includes/user.php';
           ?>
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="<?= ($activePage == 'home') ? 'active': ''; ?>">
                        <a href="home.php">
                            <i class="material-icons">home</i>
                            <span>Home</span>
                        </a>
                    </li>
                    <li class="header">MANAGE STUDENT APPLICATIONS</li>
                    <li class="<?= ($activePage == 'applicant' || $activePage == 'applicant_approved' || $activePage == 'applicant_pending' || $activePage == 'applicant_rejected' || $activePage =='applicant_review') ? 'active': ''; ?>">
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">supervisor_account</i>
                            <span>Applicants</span>
                        </a>
                         <ul class="ml-menu">
                            <li class="<?= ($activePage == 'applicant') ? 'active': ''; ?>">
                                <a href="applicant.php">Applicants Masterlist</a>
                            </li>
                            <li class="<?= ($activePage == 'applicant_pending') ? 'active': ''; ?>">
                                <a href="javascript:void(0);" class="menu-toggle">Pending Applications</a>
                                <ul class="ml-menu">
                                    <li>
                                        <?php
                                        require 'be/database/db_pdo.php';
                                        $sql = $conn->prepare("SELECT * FROM `tbl_academic_year`");
                                        $sql->execute();
                                        while($fetch = $sql->fetch()){
                                        ?>
                                        <a href="applicant_pending.php?id=<?php echo $fetch['id'];?>">A.Y. <?php echo $fetch['ay_year']; ?></a>
                                        <?php
                                            }
                                        ?>
                                    </li>
                                </ul>
                            </li>
                            <li class="<?= ($activePage == 'applicant_approved') ? 'active': ''; ?>">
                                <a href="javascript:void(0);" class="menu-toggle">Approved Applications</a>
                                <ul class="ml-menu">
                                    <li>
                                        <?php
                                        require 'be/database/db_pdo.php';
                                        $sql = $conn->prepare("SELECT * FROM `tbl_academic_year`");
                                        $sql->execute();
                                        while($fetch = $sql->fetch()){
                                        ?>
                                        <a href="applicant_pending.php?id=<?php echo $fetch['id'];?>">A.Y. <?php echo $fetch['ay_year']; ?></a>
                                        <?php
                                            }
                                        ?>
                                    </li>
                                </ul>
                            </li>
                            <li class="<?= ($activePage == 'applicant_rejected') ? 'active': ''; ?>">
                                <a href="javascript:void(0);" class="menu-toggle">Rejected Applications</a>
                                <ul class="ml-menu">
                                    <li>
                                        <?php
                                        require 'be/database/db_pdo.php';
                                        $sql = $conn->prepare("SELECT * FROM `tbl_academic_year`");
                                        $sql->execute();
                                        while($fetch = $sql->fetch()){
                                        ?>
                                        <a href="applicant_pending.php?id=<?php echo $fetch['id'];?>">A.Y. <?php echo $fetch['ay_year']; ?></a>
                                        <?php
                                            }
                                        ?>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="header">OTHER OPTIONS</li>
                     <li>
                        <a href="settings.php">
                            <i class="material-icons">settings</i>
                            <span>Settings</span>
                        </a>
                    </li>
                    <li>
                        <a href="changelog.php">
                            <i class="material-icons">feedback</i>
                            <span>Feedbacks</span>
                        </a>
                    </li>
                    <li>
                        <a href="changelog.php">
                            <i class="material-icons">update</i>
                            <span>Changelogs</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal">
                <div class="copyright">
                    &copy; 2021 <a href="javascript:void(0);">Online Admission System</a>.
                </div>
                <div class="version">
                    <b>Version: </b> 1.0.0
                </div>
            </div>
            <!-- #Footer -->
            <?php
            include 'includes/right_sidebar.php';
        ?>
        </aside>
        <!-- #END# Left Sidebar -->