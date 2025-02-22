package Models.cart;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<CartProduct> items = new ArrayList<>();
    public double totalPrice;
    public double rawTotalPrice;

    public double getTotalPrice() {
        return totalPrice;
    }
    public double getRawTotalPrice() {
        return rawTotalPrice;
    }

    public void addCart(CartProduct pro) {
        boolean updated = updateCart(pro);
        if (!updated) {

            CartProduct cartProduct = new CartProduct(
                    pro.id,
                    pro.getName(),
                    pro.price,
                    pro.quantity,
                    pro.getImg(),
                    pro.weight,
                    0,
                    pro.sale
            );

            double rawProductPrice = pro.price * pro.quantity;
            double discountedPrice = pro.price - (pro.price * pro.getSale() / 100);
            double totalProductPrice = discountedPrice * pro.quantity;

            cartProduct.rawTotal = rawProductPrice;
            cartProduct.total = totalProductPrice;

            items.add(cartProduct);
            rawTotalPrice += rawProductPrice;
            totalPrice += totalProductPrice;

            System.out.println(cartProduct.rawTotal + " - Tổng tiền chưa giảm của sản phẩm vừa thêm");
            System.out.println(cartProduct.total + " - Tổng tiền đã giảm của sản phẩm vừa thêm");
        }
    }

    public boolean updateCart(CartProduct pro) {

        for (CartProduct cart : items) {
            if (pro.id.equals(cart.id) && pro.weight == cart.weight) {
                if (cart.quantity <= 0) {
                    removeCart(cart.id, String.valueOf(cart.weight));
                    return true;
                }
                // Cập nhật số lượng
                cart.quantity += pro.quantity;

                // Nếu số lượng bằng 0, loại bỏ sản phẩm khỏi giỏ
                if (cart.quantity <= 0) {
                    removeCart(cart.id, String.valueOf(cart.weight));
                    return true;
                }

                // Cập nhật giá trị
                double rawProductPrice = pro.price * cart.quantity;
                double discountedPrice = pro.price - (pro.price * pro.getSale() / 100);
                double totalProductPrice = discountedPrice * cart.quantity;

                cart.rawTotal = rawProductPrice; // Cập nhật lại giá trị chưa giảm
                cart.total = totalProductPrice; // Cập nhật lại giá trị đã giảm
                rawTotalPrice += rawProductPrice;
                totalPrice += totalProductPrice;

                System.out.println(cart.rawTotal + " - Tổng tiền chưa giảm của sản phẩm trong giỏ");
                System.out.println(cart.total + " - Tổng tiền đã giảm của sản phẩm trong giỏ");
                return true;
            }
        }
        return false;
    }

    public boolean removeCart(String id, String weight) {
        for (CartProduct cart : items) {
            if (cart.id.equals(id) && cart.weight == Integer.parseInt(weight)) {
                rawTotalPrice -= cart.rawTotal;
                totalPrice -= cart.total;

                items.remove(cart);

                if (items.isEmpty()) {
                    rawTotalPrice = 0;
                    totalPrice = 0;
                }
                return true;
            }
        }
        return false;
    }

    public List<CartProduct> getItems() {
        return items != null ? items : new ArrayList<>();
    }
}