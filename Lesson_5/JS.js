function variables() {
    var a = 1
    a = "a;fm;dsl"
    var out = function(value){ print(value) }
    out(a)
    out(5)
    var func2 = new Function("param1", "param2", "print('func2 result: ' + (param1 + param2))")
    func2(1, 2)
    var array = [1, "jg", 3]
    print(array)
    var array2d = [[1, 0], [0, 1]]
    print(array2d)
    var nullptrAnalogue
    print(nullptrAnalogue)
    var notANumber = NaN
    print(notANumber)
    var hugeNum = 100000 ** 100000
    print(hugeNum)
    var object = { "key_1": 10, "key_2": 20 }
    print(object["key_1"] + " " + object["key_2"])
    var simpleString = "Строка и ничего больше"
    print(simpleString)
    var point = Qt.point(1, 2)
    print(point)
    var size = Qt.size(20, 40)
    print(size)
    var color = Qt.rgba(1, 1, 1, 0.5)
    print(color)
    var date = new Date()
    print(date.toISOString())
}
function simpleCycle(){
    for (var i = 0; i < 10; ++i)
        console.log(i + 1)
}
function simpleSwitch(number) {
    switch(number)
        {
            case 0:
                print("ноль")
                break;
            case 1:
                print("один")
                break;
            case 2:
                print("два")
                break;
            case 3:
                print("три")
                break;
            default:
                print("Слишком большое число")
        }
}
function logicOperations(){
    print(0 == false)
    print(0 === false)
    print(1 == "1")
    print(1 === "1")
    print(null == undefined)
    print(null === undefined)
    print('0' == false)
    print('0' === false)
}
function anyArgumentsCount() {
    for (var i = 0; i < arguments.length; i++) {
        print(arguments[i])
    }
}
function YesIAmAnObject(constructorParam1, constructorParam2) {
    this.innerParameter1 = constructorParam1
    this.innerParameter2 = constructorParam2
    var secretMember = 245.9
    this.getParams = function() { return Array(this.innerParameter1, this.innerParameter2) }
}
