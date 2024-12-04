// Singleton through just object declaration
{
  console.log("--------------------------");
  const Singleton = {
    property: "value",
    method() {},
  };
}

// Singleton through class declaration
{
  console.log("--------------------------");
  class Singleton {
    constructor() {
      if (Singleton.instance) {
        return Singleton.instance;
      }

      Singleton.instance = this;
    }
  }

  const instance1 = new Singleton();
  const instance2 = new Singleton();

  console.log(instance1 === instance2);
}

// Singleton through iife and closures
//
// (provides better encapsulation,
// but not when we work on recent js
// with private fields, it will be
// same as with class)
{
  console.log("--------------------------");
  const Singleton = (function () {
    let instance;
    function createInstance() {
      return {
        message: "I am the only instance!",
        showMessage: function () {
          console.log(this.message);
        },
      };
    }
    return {
      getInstance: function () {
        if (!instance) {
          instance = createInstance();
        }
        return instance;
      },
    };
  })();
  const singleton1 = Singleton.getInstance();
  const singleton2 = Singleton.getInstance();
  console.log(singleton1 === singleton2);
}

// Singleton through module system
// singleton.js
let instance;

class Singleton {
  constructor() {
    if (instance) {
      return instance;
    }
    instance = this;
    this.data = [];
  }
}

export default new Singleton();
