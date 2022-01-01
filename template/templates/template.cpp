// hello.c
#include <bits/stdc++.h>
using namespace std;

void solve(int test) {
  int N, M;
  cin >> N >> M;
  auto a = vector<vector<int>>(N, vector<int>(M, 0));
  for (int i = 0; i < N; i++) {
    for (int j = 0; j < M; j++) {
      cin >> a[i][j];
    }
  }

  cout << "Case #" << test << ": " << 0 << endl;
}

int main() {
  ios::sync_with_stdio(false);
  cin.tie(0);
  cerr << endl << "--- STDERR DEBUG LOG ---" << endl;
  int T = 1;
  cin >> T;
  for (int t = 1; t <= T; t++) {
    cerr << "Case #" << t << " stderr:" << endl;
    solve(t);
  }
  return 0;
}