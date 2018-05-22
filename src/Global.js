/* globals exports */
"use strict";

exports.nan = NaN;

exports.isNaN = isNaN;

exports.infinity = Infinity;

exports.isFinite = isFinite;

exports.readInt = function (radix) {
  return function (n) {
    return parseInt(n, radix);
  };
};

exports.readFloat = parseFloat;
