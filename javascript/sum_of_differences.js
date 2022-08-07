exports.sumOfDifferences = function(arr) {
  if (arr.length <= 1) {
    return 0;
  }
  return sum(arr.sort((a,b) => b-a), []).reduce((acc, val) => acc + val);
}
function sum([h, ...tail], acc) {
  if(tail.length === 0){
    return acc.concat(h);
  }
  if(tail.length === 1) {
    return acc.concat(h - tail[0]);
  }
  return sum(tail, acc.concat(h - tail[0]));
}

