var passwordGenerator = (function() {
  var generateRandomNum = function (max) {
    var array = new Uint8Array(1);
    window.crypto.getRandomValues(array);
    var range = max + 1;
    var max_range = 256;
    if (array[0] >= Math.floor(max_range / range) * range)
        return generateRandomNum(max);
    return (array[0] % range);
  };

  var generatePassword = function (options) {
    var uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXTZ";
    var lowercase = "abcdefghiklmnopqrstuvwxyz";
    var numbers = "0123456789";
    var punct = ".,-/#!$%^&*;:{}=-_`~()]";
    var candidates = '';
    if (options.includeUppercaseChars) {
      candidates += uppercase;
    }
    if (options.includeLowercaseChars) {
      candidates += lowercase;
    }
    if (options.includeNumbers) {
      candidates += numbers;
    }
    if (options.includePunctuationChars) {
      candidates += punct;
    }
    var result = "";
    for (var i = 0; i < options.passwordLength; i++) {
      var randomNum = generateRandomNum(candidates.length);
      result += candidates.substring(randomNum, randomNum + 1);
    }
    return result;
  };

  return {
    generatePassword: generatePassword
  };
})();
