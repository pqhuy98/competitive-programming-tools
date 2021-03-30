// node template.js < A-small.in > A-small.out

// nextInt(): read integer
// next(): read string
// readline(): read whole line

function main() {
    var tests = 1;
    tests = nextInt();

    for (let t = 1; t <= tests; t++) {
        let N = nextInt(), M = nextInt();
        let a = [];
        for(let i = 0; i < N; i++) {
            a.push([]);
            for(let j = 0; j < M; j++) {
                a[i].push(nextInt());
            }
        }

        let result = 0;

        print("Case #" + t + ": " + result);
    }
}

// ------- Template ------------------
function newTensor(dimensions, value) {
    let res = [];
    let dim = dimensions[0], subdim = dimensions.slice(1);
    if (subdim.length == 0) {
        for(let i = 0; i < dim; i++) {
            res.push(value);
        }
    } else {
        for(let i = 0; i < dim; i++) {
            res.push(newTensor(subdim, value));
        }
    }
    return res;
}

if (!String.prototype.startsWith) {
    Object.defineProperty(String.prototype, 'startsWith', {
        value: function(search, rawPos) {
            var pos = rawPos > 0 ? rawPos|0 : 0;
            return this.substring(pos, pos + search.length) === search;
        }
    });
}
if (!String.prototype.endsWith) {
    String.prototype.endsWith = function(search, this_len) {
        if (this_len === undefined || this_len > this.length) {
            this_len = this.length;
        }
        return this.substring(this_len - search.length, this_len) === search;
    };
}

var curTokens = [], curToken = 0;

function next() {
    while (curToken >= curTokens.length) {
        curTokens = readline().split(/[\s]+/);
        curToken = 0;
    }
    return curTokens[curToken++];
}

function nextInt() {
    return parseInt(next());
}

// code for nodejs
var inputBuffer = '', curLine = 0;

function readline() {
    return inputBuffer[curLine++];
}

function print(data) {
    process.stdout.write(data + '\n');
}

process.stdin.resume();
process.stdin.setEncoding('utf8');

process.stdin.on('data', function (chunk) {
    inputBuffer += chunk;
});

process.stdin.on('end', function () {
    inputBuffer = inputBuffer.split(/[\s]+/);
    main();
});
