// hello.c
#include <bits/stdc++.h>
using namespace std;

class Solver {
  int n, m;
  vector<vector<int>> a;

 public:
  void solve(int test) {
    cin >> n >> m;
    a = vector<vector<int>>(n, vector<int>(m, 0));

    for (int i = 0; i < n; i++) {
      for (int j = 0; j < m; j++) {
        cin >> a[i][j];
      }
    }

    cout << "Case #" << test << ": " << 0 << endl;
  }
};

int main() {
  ios::sync_with_stdio(false);
  cin.tie(0);
  cerr << endl << "--- STDERR DEBUG LOG ---" << endl;
  int T = 1;
  cin >> T;
  for (int t = 1; t <= T; t++) {
    cerr << "Case #" << t << " stderr:" << endl;
    Solver().solve(t);
  }
  return 0;
}