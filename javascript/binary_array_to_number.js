exports.binaryArrayToNumber = arr => {
  let result = 0;
  for (let i = 0; i < arr.length; i++) {
    result += arr[i] << ((arr.length-1) - i);
  }
  return result;
};
