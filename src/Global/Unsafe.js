/* globals exports, JSON */
"use strict";

// module Global.Unsafe

exports.unsafeStringify = function (x) {
  return JSON.stringify(x);
};

exports.unsafeToFixed = function (n) {
  return function (digits) {
    return n.toFixed(digits);
  }
};

exports.unsafeToExponential = function (n) {
  return function (digits) {
    return n.toExponential(digits);
  }
};

exports.unsafeToPrecision  = function (n) {
  return function (digits) {
    return n.toPrecision(digits);
  }
};

