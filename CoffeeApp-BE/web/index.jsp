
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Shop</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style_index.css">
</head>
<body>
    <div class="header_box">
        <a href="index.html"><h2>Coffee shop app</h2></a>
    </div>
    <div class="row">
        <div class="col-md-7">
            <div>
                <input type="radio" name="fillter-button"> <label>Tất cả</label>
          
                <input type="radio" name="fillter-button"> <label>Đang sử dụng</label>
            
                <input type="radio" name="fillter-button"> <label>Còn trống</label>
                <input class="searching_input" type="text" placeholder="Tìm món..."/>
            </div>
            
            <div class="tab">
            <button class="tablinks" onclick="openCity(event, 'phongban')">Phòng bàn</button>
            <button class="tablinks" onclick="openCity(event, 'thucdon')">Thực đơn</button>
            </div>
            <div id="phongban" class="tabcontent">
                <div class="row">
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button class="button_item1">
                            <img src="images/shipping.png" alt="">
                            <p>Ship hàng</p>
                        </button>                    
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button>
                            <img src="images/gio_hang.png" alt="">
                            <p>Mang về</p>
                        </button>                    
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button>
                            <img src="images/ban_ghe.png" alt="">
                            <p>Bàn 1</p>
                        </button>                    
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button>
                            <img src="images/ban_ghe.png" alt="">
                            <p>Bàn 2</p>
                        </button> 
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button>
                            <img src="images/ban_ghe.png" alt="">
                            <p>Bàn 3</p>
                        </button> 
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button>
                            <img src="images/ban_ghe.png" alt="">
                            <p>Bàn 4</p>
                        </button> 
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button>
                            <img src="images/ban_ghe.png" alt="">
                            <p>Bàn 5</p>
                        </button> 
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button>
                            <img src="images/ban_ghe.png" alt="">
                            <p>Bàn 6</p>
                        </button> 
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button>
                            <img src="images/ban_ghe.png" alt="">
                            <p>Bàn 7</p>
                        </button>                    
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button>
                            <img src="images/ban_ghe.png" alt="">
                            <p>Bàn 8</p>
                        </button> 
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button>
                            <img src="images/ban_ghe.png" alt="">
                            <p>Bàn 9</p>
                        </button> 
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button>
                            <img src="images/ban_ghe.png" alt="">
                            <p>Bàn 10</p>
                        </button> 
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button>
                            <img src="images/ban_ghe.png" alt="">
                            <p>Bàn 11</p>
                        </button> 
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 item1">
                        <button>
                            <img src="images/ban_ghe.png" alt="">
                            <p>Bàn 12</p>
                        </button> 
                    </div>
                </div>
            </div>
            
            <div id="thucdon" class="tabcontent">
                <div class="row">
                    <div class="category">
                        <button type="button" class="btn btn-outline-secondary category-item">
                            Các loại trà</button>
                        <button type="button" class="btn btn-outline-secondary category-item">
                            Soda</button>
                        <button type="button" class="btn btn-outline-secondary category-item">
                            Yaourt</button>
                        <button type="button" class="btn btn-outline-secondary category-item">
                            Cocktail</button>
                    </div>
                </div>
                <div class="row">
                    <div  class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/hita-chay-tra-trai-cay-6.jpg" alt="" />
                        <h4>Chà chanh trái cây</h4>
                        <h4 class="gia_tien">40k</h4>
                        <button>Add</button>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/mojito-chanh-bac-ha-1.jpg" alt="" />
                        <h4>Chà chanh bạc hà</h4>
                        <h4 class="gia_tien">30k</h4>
                        <button>Add</button>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/nhuong-quyen-tra-sua.jpg" alt="" />
                        <h4>Chà sữa</h4>
                        <h4 class="gia_tien">45k</h4>
                        <button>Add</button>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/tra-dao-cam-sa.jpg" alt="" />
                        <h4>Trà đào cam sả</h4>
                        <h4 class="gia_tien">40k</h4>
                        <button>Add</button>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/tra-dau.jpg" alt="" />
                        <h4>Trà dâu</h4>
                        <h4 class="gia_tien">20k</h4>
                        <button>Add</button>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/soda-viet-quat.jpg" alt="" />
                        <h4>Soda việt quất</h4>
                        <h4 class="gia_tien">20k</h4>
                        <button>Add</button>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/soda-kiwi.jpg" alt="" />
                        <h4>Soda kiwi</h4>
                        <h4 class="gia_tien">30k</h4>
                        <button>Add</button>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/soda-dao.jpg" alt="" />
                        <h4>Soda đào</h4>
                        <h4 class="gia_tien">25k</h4>
                        <button>Add</button>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/yaourt-dau-tay.jpg" alt="" />
                        <h4>Yaourt dâu tây</h4>
                        <h4 class="gia_tien">50k</h4>
                        <button>Add</button>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/yaourt-xoai.jpg" alt="" />
                        <h4>Yaourt xoài</h4>
                        <h4 class="gia_tien">45k</h4>
                        <button>Add</button>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/yaourt-nep-cam.jpg" alt="" />
                        <h4>Yaourt nếp cẩm</h4>
                        <h4 class="gia_tien">35k</h4>
                        <button>Add</button>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/cocktail-negroni.jpg" alt="" />
                        <h4>Cocktail Negroni</h4>
                        <h4 class="gia_tien">75k</h4>
                        <button>Add</button>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/cocktail-whickey-sour.jpg" alt="" />
                        <h4>Cocktail Whiskey Sour</h4>
                        <h4 class="gia_tien">85k</h4>
                        <button>Add</button>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 item2">
                        <img src="images/cocktail-daiquiri.jpg" alt="" />
                        <h4>Cocktail Daiquiri</h4>
                        <h4 class="gia_tien">55k</h4>
                        <button>Add</button>
                    </div>
                </div>
            </div>
        </div> 
        
        <div class="col-md-5">
          
            <div class="tab">
            <button class="tablinks" onclick="openCity(event, 'ban1')">Bàn 1</button>
            <button class="tablinks" onclick="openCity(event, 'ban2')">Bàn 2</button>
            </div>
            <div id="ban1" class="tabcontent">
                <p>hellu</p>
            </div>

            <div id="ban2" class="tabcontent">
                <p>hellô</p>
            </div>
        </div>
    </div>   
    <script src="js/index.js"></script>
    <script>    
        openCity(event, 'phongban');
    </script>
</body>
</html>