export default function ipsBetween(start, end) {
  const ipStartSum =  ipSum(start);
  const ipEndSum =  ipSum(end);
  return ipEndSum - ipStartSum;
}
const ranges = [1, 256, 65536, 16777216];
function ipSum(ip) {
  return ip.split('.').reverse().reduce((total, value, index) => total + value * ranges[index], 0);
}
