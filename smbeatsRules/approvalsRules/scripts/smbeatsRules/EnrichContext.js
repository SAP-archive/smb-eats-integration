var offerInfo = [];
var offer = {};

if ($.context.offer.OffersInfo.Result.length > 0){
    var assignedOffer = $.context.offer.OffersInfo.Result[0].Offer;

    if (assignedOffer.length > 0) {
        for (var i = 0; i < assignedOffer.length; i++) {
            offer = assignedOffer[i];
            offer.ProdDesc = offer.OfferDescription;
            offer.OfferType = offer.OfferType;
            offerInfo.push(offer);
        }
    } else {
        offer = assignedOffer;
        offer.ProdDesc = offer.OfferDescription;
        offer.OfferType = offer.OfferType;
        offerInfo.push(offer);
    }
} else {
    offer.ProdDesc = "None";
    offer.OfferType = "None";
    offerInfo.push(offer);
}

$.context.offer.OffersInfo = offerInfo;

/************ Prepare Input Payload to Execute Rules (APPROVAL) ****************/
var VocabularyApproval = [{
    "Offer": {
        "OfferType": offer.OfferType
    }
}];
var rulesPayloadApproval = {
"RuleServiceId": "5398e9324eba40d5a0a4d6b44a83f9c9",
    "RuleServiceVersion": "000000000001000000",
"Vocabulary": VocabularyApproval
};
$.context.rulesPayloadApproval = rulesPayloadApproval;