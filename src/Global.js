// module Global

exports.infinity = Infinity;

exports.readInt = function(radix) {
  return function(n) {
    return parseInt(n, radix);
  };
};

exports.readFloat = parseFloat;

