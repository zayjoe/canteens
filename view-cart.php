<!-- <//?php include "admin/confs/auth_user.php" ?> -->
<?php include 'header.php';

?>


<div class="container">
    <div class="row">
        <div class="col-8">
        <div class="card-body">
            <form action=""></form>
            <div class="table-responsive">
                <table class="table table-bordered text-center" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Qty</th>
                            <th>Unit Price</th>
                            <th>Price</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                     <!-- <?//php var_dump($_SESSION['cart']); ?> -->
                    <?php
                        $total = 0;
                        foreach($_SESSION['cart'] as $id => $qty):

                        $result = mysqli_query($conn, "SELECT title, price FROM products WHERE id=$id");
                        $row = mysqli_fetch_assoc($result);
                        $total += $row['price'] * $qty;
                    ?>

                    <tr>
                        <td><?php echo $row['title'] ?></td>
                        <td><?php if($qty === 1): ?>
                            <?php elseif($qty >= 2): ?>
                                <a href="remove-qty.php/?id=<?php echo $id ?>"><i class="fa fa-minus-circle"></i></a>
                            <?php endif; ?>
                              <?php echo $qty ?>   <a href="add-cart.php/?id=<?php echo $id ?>" ><i class="fa fa-plus-circle"></i></a>
                        </td>
                        <td><?php echo $row['price'] ?></td>
                        <td><?php echo $row['price'] * $qty ?> </td>
                        <td><a href="remove-cart.php/?id=<?php echo $id ?>">Remove</a></td>

                    </tr>
                    <?php endforeach; ?>

                    <tr>
                    <td colspan="3" align="right"><b>Total:</b></td>

                        <?php
                        if($user_points['points'] > 0 ){
                            //echo "User Have Point already";
                        }else{
                            if($total >= 50000){
                                $discountAmount = $total * 0.3;
                                $total = $total - $discountAmount;
                                //echo $orderTotal;
                            }

                        }


                        ?>

                        <//?php endif; ?>
                    <td><?php echo $total;?></td>
                    <td>Buy 50k get discount</td>

                    <input type="hidden" value="<?php $_SESSION['total'] = $total ?>">
                    </tr>

                    <tr>
                    <form action="order-form.php" id="target" method="post">
                    <?php
                        if($user_points['points'] < 99): ?>
                        <td colspan="3" align="right"><b>Discount Points:</b></td>
                        <td><input type="hidden" name="discount_point" value="0"></td>
                        <?php else: ?>
                            <td colspan="3" align="right"><b>Discount Points:</b></td>
                            <td><input type="hidden" name="discount_point" value="100">100</td>
                        <?php endif; ?>

                    </tr>

                    <?php if($user_points['points'] > 99): ?>
                    <tr>
                    <td colspan="3" align="right"><b>Order Total:</b></td>
                    <td><?php $discountAmount = $total * 0.3;
                     $orderTotal = $total - $discountAmount;
                     echo $orderTotal;
                    ?></td>

                    </tr>
                    <?php endif; ?>



                    <tbody>

                    </tbody>
                </table>

                <!-- <button class="btn btn-success" id ="points"><a  class="text-white" href="order-form.php">Order Now</a></button> -->
                     <input class="btn btn-primary btn_order" type="submit" value="Order Now" >

            </form>
                <div class="btn_group">
                                    <button class="btn btn-primary btn_shop"><a class="text-white" href="index.php">Continue Shopping</a></button>

                </div>

            </div>
        </div>
        </div>
    </div>
</div>


<?php include 'footer.php' ?>