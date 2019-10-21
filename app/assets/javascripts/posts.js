var testDateUtc = moment.utc("2015-01-30 10:00:00");
var localDate = moment(testDateUtc).local();
console.log(localDate);