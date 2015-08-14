var passwordGenerator = (function() {
  return {
    generatePassword: function (options) {
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
        var randomNum = Math.floor(Math.random() * candidates.length);
        result += candidates.substring(randomNum, randomNum + 1);
      }
      return result;
    }
  };
})();
