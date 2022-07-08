// my programmatic approach => doesn't work because a pure mathematical approach with n >= 10000
exports.countSixes = function(n) {
  let acc = {};
  for ( let i = 0; i <= n; i++ ) {
    if (i <= 1) {
      acc[i] = i;
    } else {
      acc[i] = (acc[i - 1] + acc[i - 2]) / 2;
    }
  }
  return Math.max((acc[n].toFixed(100).match(/0\.(?:6+)/) || "").toString().length-2,0);
};

// shitty mathematical solution picked up here...
// http://acm.timus.ru/forum/?space=1&num=1605&style=tree
// not a 'math only' solution friend...
exports.lookedUpCountSixes = function(n) {
  let [ n0, n1, n2 ] = [ n - 1, n, n + 1 ].map(x => {
    return parseInt(Math.log10(2) * x);
  });
  let ans = n1;
  if (n1 === n2 && n1 === (n0 + 1) && (n % 2) !== 0) {
    ans = n0;
  }
  return ans;
};
