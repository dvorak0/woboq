<use f='codebrowser/gtsam/3rdparty/ceres/jet.h' l='180' u='c' c='_ZN5ceres3JetC1Ev'/>
<use f='codebrowser/gtsam/3rdparty/ceres/jet.h' l='186' u='c' c='_ZN5ceres3JetC1ERKT_'/>
<use f='codebrowser/gtsam/3rdparty/ceres/jet.h' l='192' u='c' c='_ZN5ceres3JetC1ERKT_i'/>
<use f='codebrowser/gtsam/3rdparty/ceres/jet.h' l='193' u='w' c='_ZN5ceres3JetC1ERKT_i'/>
<use f='codebrowser/gtsam/3rdparty/ceres/jet.h' l='202' u='w' c='_ZN5ceres3JetC1ERKT_RKN5Eigen9DenseBaseITL0__EE'/>
<dec f='codebrowser/gtsam/3rdparty/ceres/jet.h' l='244' type='Eigen::Matrix&lt;T, N, 1, Eigen::DontAlign&gt;'/>
<doc f='codebrowser/gtsam/3rdparty/ceres/jet.h' l='229'>// The infinitesimal part.
  //
  // Note the Eigen::DontAlign bit is needed here because this object
  // gets allocated on the stack and as part of other arrays and
  // structs. Forcing the right alignment there is the source of much
  // pain and suffering. Even if that works, passing Jets around to
  // functions by value has problems because the C++ ABI does not
  // guarantee alignment for function arguments.
  //
  // Setting the DontAlign bit prevents Eigen from using SSE for the
  // various operations on Jets. This is a small performance penalty
  // since the AutoDiff code will still expose much of the code as
  // statically sized loops to the compiler. But given the subtle
  // issues that arise due to alignment, especially when dealing with
  // multiple platforms, it seems to be a trade off worth making.</doc>
