<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<<section class="content-main">
    <div class="content-header">
        <div>
            <h2 class="content-title card-title">Order List </h2>
            <p>Lorem ipsum dolor sit amet.</p>
        </div>
        <div>
            <input type="text" placeholder="Search order ID" class="form-control bg-white">
        </div>
    </div>
    <div class="card mb-4">
        <header class="card-header">
            <div class="row gx-3">
                <div class="col-lg-4 col-md-6 me-auto">
                    <input type="text" placeholder="Search..." class="form-control">
                </div>
                <div class="col-lg-2 col-6 col-md-3">
                    <select class="form-select">
                        <option>Status</option>
                        <option>Active</option>
                        <option>Disabled</option>
                        <option>Show all</option>
                    </select>
                </div>
                <div class="col-lg-2 col-6 col-md-3">
                    <select class="form-select">
                        <option>Show 20</option>
                        <option>Show 30</option>
                        <option>Show 40</option>
                    </select>
                </div>
            </div>
        </header> <!-- card-header end// -->
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Total</th>
                            <th scope="col">Status</th>
                            <th scope="col">Date</th>
                            <th scope="col" class="text-end"> Action </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>0901</td>
                            <td><b>Marvin McKinney</b></td>
                            <td><template class="__cf_email__" data-cfemail="167b7764607f7856736e777b667a733875797b">[email&#160;protected]</template></td>
                            <td>$9.00</td>
                            <td><span class="badge rounded-pill alert-warning">Pending</span></td>
                            <td>03.12.2022</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                        <tr>
                            <td>2323</td>
                            <td><b>Leslie Alexander</b></td>
                            <td><template class="__cf_email__" data-cfemail="731f16001f1a1633160b121e031f165d101c1e">[email&#160;protected]</template></td>
                            <td>$46.61</td>
                            <td><span class="badge rounded-pill alert-warning">Pending</span></td>
                            <td>21.02.2022</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                        <tr>
                            <td>1233</td>
                            <td><b>Esther Howard</b></td>
                            <td><template class="__cf_email__" data-cfemail="026771766a677042677a636f726e672c616d6f">[email&#160;protected]</template></td>
                            <td>$12.00</td>
                            <td><span class="badge rounded-pill alert-danger">Canceled</span></td>
                            <td>03.07.2022</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                        <tr>
                            <td>1233</td>
                            <td><b>Esther Howard</b></td>
                            <td><template class="__cf_email__" data-cfemail="721701061a170032170a131f021e175c111d1f">[email&#160;protected]</template></td>
                            <td>$12.00</td>
                            <td><span class="badge rounded-pill alert-danger">Canceled</span></td>
                            <td>03.07.2022</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                        <tr>
                            <td>2323</td>
                            <td><b>Jenny Wilson</b></td>
                            <td><template class="__cf_email__" data-cfemail="1c76797272655c79647d716c7079327f7371">[email&#160;protected]</template></td>
                            <td>$589.99</td>
                            <td><span class="badge rounded-pill alert-success">Received</span></td>
                            <td>22.05.2022</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                        <tr>
                            <td>2112</td>
                            <td><b>Marvin McKinney</b></td>
                            <td><template class="__cf_email__" data-cfemail="e885899a9e8186a88d90898598848dc68b8785">[email&#160;protected]</template></td>
                            <td>$16.58</td>
                            <td><span class="badge rounded-pill alert-success">Received</span></td>
                            <td>23.04.2022</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                        <tr>
                            <td>7897</td>
                            <td><b>Albert Flores</b></td>
                            <td><template class="__cf_email__" data-cfemail="7a1b16181f080e3a1f021b170a161f54191517">[email&#160;protected]</template></td>
                            <td>$10.00</td>
                            <td><span class="badge rounded-pill alert-success">Received</span></td>
                            <td>13.03.2022</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                        <tr>
                            <td>2323</td>
                            <td><b>Wade Warren</b></td>
                            <td><template class="__cf_email__" data-cfemail="f384929796b3968b929e839f96dd909c9e">[email&#160;protected]</template></td>
                            <td>$105.55</td>
                            <td><span class="badge rounded-pill alert-success">Received</span></td>
                            <td>23.09.2019</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                        <tr>
                            <td>2324</td>
                            <td><b>Jane Cooper</b></td>
                            <td><template class="__cf_email__" data-cfemail="6b010a050e2b0e130a061b070e45080406">[email&#160;protected]</template></td>
                            <td>$710.68</td>
                            <td><span class="badge rounded-pill alert-success">Received</span></td>
                            <td>28.04.2022</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                        <tr>
                            <td>2325</td>
                            <td><b>Savannah Nguyen</b></td>
                            <td><template class="__cf_email__" data-cfemail="40332136212e2e2128002538212d302c256e232f2d">[email&#160;protected]</template></td>
                            <td>$710.68</td>
                            <td><span class="badge rounded-pill alert-success">Received</span></td>
                            <td>23.03.2022</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                        <tr>
                            <td>2326</td>
                            <td><b>Guy Hawkins</b></td>
                            <td><template class="__cf_email__" data-cfemail="c4a3b1bd84a1bca5a9b4a8a1eaa7aba9">[email&#160;protected]</template></td>
                            <td>$767.50</td>
                            <td><span class="badge rounded-pill alert-success">Received</span></td>
                            <td>28.04.2022</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                        <tr>
                            <td>2327</td>
                            <td><b>Darrell Steward</b></td>
                            <td><template class="__cf_email__" data-cfemail="1b7f7a69697e775b7e637a766b777e35787476">[email&#160;protected]</template></td>
                            <td>$406.27</td>
                            <td><span class="badge rounded-pill alert-success">Received</span></td>
                            <td>14.07.2022</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                        <tr>
                            <td>2328</td>
                            <td><b>Jane Cooper</b></td>
                            <td><template class="__cf_email__" data-cfemail="395358575c795c41585449555c175a5654">[email&#160;protected]</template></td>
                            <td>$601.13</td>
                            <td><span class="badge rounded-pill alert-success">Received</span></td>
                            <td>18.03.2022</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                        <tr>
                            <td>2329</td>
                            <td><b>Darlene Robertson</b></td>
                            <td><template class="__cf_email__" data-cfemail="325657405b575c5772574a535f425e571c515d5f">[email&#160;protected]</template></td>
                            <td>$948.55</td>
                            <td><span class="badge rounded-pill alert-success">Received</span></td>
                            <td>03.07.2022</td>
                            <td class="text-end">
                                <a href="#" class="btn btn-md rounded font-sm">Detail</a>
                                <div class="dropdown">
                                    <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">View detail</a>
                                        <a class="dropdown-item" href="#">Edit info</a>
                                        <a class="dropdown-item text-danger" href="#">Delete</a>
                                    </div>
                                </div> <!-- dropdown //end -->
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div> <!-- table-responsive //end -->
        </div> <!-- card-body end// -->
    </div> <!-- card end// -->
    <div class="pagination-area mt-15 mb-50">
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-start">
                <li class="page-item active"><a class="page-link" href="#">01</a></li>
                <li class="page-item"><a class="page-link" href="#">02</a></li>
                <li class="page-item"><a class="page-link" href="#">03</a></li>
                <li class="page-item"><a class="page-link dot" href="#">...</a></li>
                <li class="page-item"><a class="page-link" href="#">16</a></li>
                <li class="page-item"><a class="page-link" href="#"><i class="material-icons md-chevron_right"></i></a></li>
            </ul>
        </nav>
    </div>
</section> <!-- content-main end// -->