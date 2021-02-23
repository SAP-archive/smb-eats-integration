  var channel = $.context.channel;
  var prodID = $.context.orderData.ProductID;
  var postCode = $.context.orderData.Address;

  /************ Prepare Input Payload to Execute Rules ****************/
  var Vocabulary = [{
      "Order": {
        "Channel": channel,
        "Address": postCode,
        "Pizza": prodID
      }
    }];
  var rulesPayload = {
  	"RuleServiceId": "5195fecc6a634212a497b98b4895a2d3",
      "RuleServiceRevision": "0",
      "RuleServiceVersion": "000000000000000003",
  	"Vocabulary": Vocabulary
  };
  $.context.rulesPayload = rulesPayload;

  /************ Enhance Workflow Context for additional attributes ****************/
  /*var attributes = {
  	username: orderData.firstName + " " + orderData.lastName,
  	division: orderData.division,
  	city: orderData.city,
  	country: orderData.country,
  	jobCode: orderData.jobCode,
  	jobTitle: empJob.jobTitle
  };
  $.context.orderData.personalInfo = attributes;
  */