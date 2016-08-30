Department.seed(
  { id: 1, name: "役員", code: "yakuin", parent_id: nil, corporation_id: 1},
  { id: 2, name: "経営企画本部", code: "keiki", parent_id: 1, corporation_id: 1},
  { id: 3, name: "IT戦略部", code: "itstrategy", parent_id: 2, corporation_id: 1},
  { id: 4, name: "総務部", code: "soumu", parent_id: 2, corporation_id: 1},
  { id: 5, name: "モバオク", code: "mbk", parent_id: nil, corporation_id: 2},
  { id: 6, name: "PFDeNA", code: "pfd", parent_id: nil, corporation_id: 3},
  { id: 7, name: "ngmoco", code: "sfo", parent_id: nil, corporation_id: 4},
  { id: 8, name: "DeNAライフサイエンス", code: "dls", parent_id: nil, corporation_id: 5},
)