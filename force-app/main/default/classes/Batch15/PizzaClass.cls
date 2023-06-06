public class PizzaClass {
    Integer orderId=0;
    Integer quantity;
    String toppings;
    String type;
    Decimal tax;
    String feedback;

    public void addCart(Integer quant,String tops,String tp){
        orderId++;
        quantity=quant;
        toppings=tops;
        type=tp;
        system.debug('new order ');

        if(quantity==1){
            tax=0.18;
        } 
        else if(quantity==2){
            tax=0.12;
        }
        else if(quantity==3){
            tax=0.06;
        }
        else{ tax=0;

        }
    }
    public void cancelCart(){
        orderId=0;
        system.debug('order is canceled');
    }
    public void feedback(string message){
        system.debug('Feedback: ' + message);
    }



}