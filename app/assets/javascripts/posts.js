var date = moment.utc().format('YYYY-MM-DD HH:mm:ss');

console.log(date);
var stillUtc = moment.utc(date).toDate();
var local = moment(stillUtc).local().format('YYYY-MM-DD HH:mm:ss');
console.log(local);