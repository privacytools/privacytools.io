var passwordGenerator = (function() {
  var generateRandomNum = function (max) {
    return Math.floor(Math.random() * max);
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
