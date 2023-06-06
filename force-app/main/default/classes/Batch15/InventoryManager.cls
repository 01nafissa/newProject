public class InventoryManager {
    string productName;
    string productCode;
    integer costPrice;
    integer sellingPrice;
   public static integer productCount=0;

   public InventoryManager(){
    productCount++;

   } 
   public InventoryManager(string productName, string productCode){
    productCount++;
    this.productName=productName;
    this.productCode=productCode;
    
   }
   public void setCostPrice(integer costPrice){
    this.costPrice=costPrice;
   }
   public void setSellingPrice(integer sellingPrice){
    this.sellingPrice=sellingPrice;
   }
   public integer getCostPrice(){
    return this.costPrice;
   }
   public integer getSellingPrice(){
    return this.SellingPrice;
   }

   public void productDisplay(){
    system.debug('product name: '+ productName);
    system.debug('product code: '+ productCode);
    system.debug('Cost Price: '+ costPrice);
    system.debug('Selling Price: '+ sellingPrice);

    integer ProfitPercent = (sellingPrice-costPrice)*100/CostPrice;
    system.debug('Profit Margin: '+ ProfitPercent+ '% ');
    if(ProfitPercent>=20){
        system.debug('Star Product');
    }else{
        system.debug('Average Product');
    }
   }

}