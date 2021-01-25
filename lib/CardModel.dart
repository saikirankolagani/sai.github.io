class CardModel{
   int quantity;
   List<String> grams;
   String name;
   int offerPercentage;
   int pricePerPacket;
   String imageUrl;
   String selectedGrams;
   CardModel({
   this.grams,
   this.name,
   this.imageUrl,
   this.offerPercentage,
   this.pricePerPacket,
   this.quantity,
   this.selectedGrams
});
}