//产生一个0 - 48的随机数
function func(num) {

    var randomNum = Math.random() * (num + 1)
    randomNum = parseInt(randomNum)
    return randomNum
}
