module.exports = {
    "env": {
        "browser": true,
        "commonjs": true,
        "es6": true
    },
    "extends": "eslint:recommended",
    "parserOptions": {
        "sourceType": "module"
    },
    "rules": {
        // Best Practices
        "block-scoped-var": "warn", // treat var statements as if they were block scoped (off by default). 0: deep destructuring is not compatible https://github.com/eslint/eslint/issues/1863
        "vars-on-top": "warn", // requires to declare all vars on top of their containing scope (off by default)
        "guard-for-in": "warn", // make sure for-in loops have an if statement (off by default)
        "complexity": "off", // specify the maximum cyclomatic complexity allowed in a program (off by default)
        "consistent-return": "error", // require return statements to either always or never specify values
        "curly": "error", // specify curly brace conventions for all control statements
        "default-case": "error", // require default case in switch statements (off by default)
        "dot-notation": "error", // encourages use of dot notation whenever possible
        "eqeqeq": "warn", // require the use of === and !==
        "no-alert": "off", // disallow the use of alert, confirm, and prompt
        "no-caller": "error", // disallow use of arguments.caller or arguments.callee
        "no-div-regex": "error", // disallow division operators explicitly at beginning of regular expression (off by default)
        "no-else-return": "error", // disallow else after a return in an if (off by default)
        "no-eq-null": "error", // disallow comparisons to null without a type-checking operator (off by default)
        "no-eval": "error", // disallow use of eval()
        "no-extend-native": "error", // disallow adding to native types
        "no-extra-bind": "error", // disallow unnecessary function binding
        "no-fallthrough": "error", // disallow fallthrough of case statements
        "no-floating-decimal": "error", // disallow the use of leading or trailing decimal points in numeric literals (off by default)
        "no-implied-eval": "error", // disallow use of eval()-like methods
        "no-iterator": "error", // disallow usage of __iterator__ property
        "no-labels": "error", // disallow use of labeled statements
        "no-lone-blocks": "error", // disallow unnecessary nested blocks
        "no-loop-func": "error", // disallow creation of functions within loops
        "no-multi-spaces": "error", // disallow use of multiple spaces
        "no-multi-str": "error", // disallow use of multiline strings
        "no-native-reassign": "error", // disallow reassignments of native objects
        "no-new": "error", // disallow use of new operator when not part of the assignment or comparison
        "no-new-func": "error", // disallow use of new operator for Function object
        "no-new-wrappers": "error", // disallows creating new instances of String,Number, and Boolean
        "no-octal": "error", // disallow use of octal literals
        "no-octal-escape": "error", // disallow use of octal escape sequences in string literals, such as var foo = "Copyright \251";
        "no-param-reassign": "warn", // disallow reassignment of function parameters (off by default)
        "no-proto": "error", // disallow usage of __proto__ property
        "no-redeclare": "error", // disallow declaring the same variable more then once
        "no-return-assign": "error", // disallow use of assignment in return statement
        "no-script-url": "error", // disallow use of javascript: urls.
        "no-self-compare": "error", // disallow comparisons where both sides are exactly the same (off by default)
        "no-sequences": "error", // disallow use of comma operator
        "no-throw-literal": "error", // restrict what can be thrown as an exception (off by default)
        "no-unused-expressions": "error", // disallow usage of expressions in statement position
        "no-void": "error", // disallow use of void operator (off by default)
        "no-warning-comments": ["off", {"terms": ["todo", "fixme"], "location": "start"}], // disallow usage of configurable warning terms in comments": "error", // e.g. TODO or FIXME (off by default)
        "no-with": "error", // disallow use of the with statement
        "radix": "error", // require use of the second argument for parseInt() (off by default)
        "wrap-iife": "error", // require immediate function invocation to be wrapped in parentheses (off by default)
        "yoda": "error", // require or disallow Yoda conditions

        // Stylistic issues
        "array-bracket-spacing": ["warn","never"], // require or disallow space in array
        "indent": ["warn", 4], // this option sets a specific tab width for your code (off by default)
        "brace-style": "warn", // enforce one true brace style (off by default)
        "camelcase": "warn", // require camel case names
        "comma-spacing": ["warn", {"before": false, "after": true}], // enforce spacing before and after comma
        "comma-style": ["warn", "last"], // enforce one true comma style (off by default)
        "computed-property-spacing": ["warn"], // require or disallow spaces between computed properties
        "consistent-this": ["warn", "that"], // enforces consistent naming when capturing the current execution context (off by default)
        "eol-last": "warn", // enforce newline at the end of file, with no multiple empty lines
        "func-names": "off", // require function expressions to have a name (off by default)
        "func-style": "off", // enforces use of function declarations or expressions (off by default)
        "keyword-spacing": "warn",
        "key-spacing": ["warn", {"beforeColon": false, "afterColon": true}], // enforces spacing between keys and values in object literal properties
        "max-nested-callbacks": ["warn", 3], // specify the maximum depth callbacks can be nested (off by default)
        "new-cap": ["warn", {newIsCap: true, capIsNew: false}], // require a capital letter for constructors
        "new-parens": "warn", // disallow the omission of parentheses when invoking a constructor with no arguments
        "newline-after-var": "off", // allow/disallow an empty newline after var statement (off by default)
        "object-curly-spacing": ["warn", "never"], // require or disallow spaces between curly braces
        "no-array-constructor": "warn", // disallow use of the Array constructor
        "no-inline-comments": "warn", // disallow comments inline after code (off by default)
        "no-lonely-if": "warn", // disallow if as the only statement in an else block (off by default)
        "no-mixed-spaces-and-tabs": "warn", // disallow mixed spaces and tabs for indentation
        "no-multiple-empty-lines": ["warn", {"max": 2}], // disallow multiple empty lines (off by default)
        "no-nested-ternary": "warn", // disallow nested ternary expressions (off by default)
        "no-new-object": "warn", // disallow use of the Object constructor
        "no-spaced-func": "warn", // disallow space between function identifier and application
        "no-ternary": "off", // disallow the use of ternary operators (off by default)
        "no-trailing-spaces": "warn", // disallow trailing whitespace at the end of lines
        "no-underscore-dangle": "warn", // disallow dangling underscores in identifiers
        "one-var": ["warn", "never"], // allow just one var statement per function (off by default)
        "operator-assignment": ["warn", "never"], // require assignment operator shorthand where possible or prohibit it entirely (off by default)
        "padded-blocks": ["warn", "never"], // enforce padding within blocks (off by default)
        "quote-props": ["warn", "as-needed"], // require quotes around object literal property names (off by default)
        "quotes": ["warn", "single"], // specify whether double or single quotes should be used
        "semi": ["warn", "always"], // require or disallow use of semicolons instead of ASI
        "semi-spacing": ["warn", {"before": false, "after": true}], // enforce spacing before and after semicolons
        "sort-vars": "off", // sort variables within the same declaration block (off by default)
        "space-before-blocks": ["warn", "always"], // require or disallow space before blocks (off by default)
        "space-before-function-paren": ["warn", {"anonymous": "always", "named": "never"}], // require or disallow space before function opening parenthesis (off by default)
        "space-in-parens": ["warn", "never"], // require or disallow spaces inside parentheses (off by default)
        "space-unary-ops": ["warn", {"words": true, "nonwords": false}], // Require or disallow spaces before/after unary operators (words on by default, nonwords off by default)
        "spaced-comment": ["warn", "always"], // require or disallow a space immediately following the // in a line comment (off by default)
        "wrap-regex": "off", // require regex literals to be wrapped in parentheses (off by default)

        // per project
        "no-console": "off",
        "comma-dangle": "off"
    }
};
