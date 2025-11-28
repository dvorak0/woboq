<def f='codebrowser/gtsam/inference/Factor.h' l='70' ll='209'/>
<use f='codebrowser/gtsam/inference/Factor.h' l='75'/>
<use f='codebrowser/gtsam/inference/Factor.h' l='76'/>
<use f='codebrowser/gtsam/inference/Factor.h' l='109' c='_ZN5gtsam6Factor8FromKeysERKT_'/>
<use f='codebrowser/gtsam/inference/Factor.h' l='110' c='_ZN5gtsam6Factor8FromKeysERKT_'/>
<use f='codebrowser/gtsam/inference/Factor.h' l='115' c='_ZN5gtsam6Factor13FromIteratorsET_S1_'/>
<use f='codebrowser/gtsam/inference/Factor.h' l='116' c='_ZN5gtsam6Factor13FromIteratorsET_S1_'/>
<ovr f='codebrowser/gtsam/sfm/BinaryMeasurement.h' l='36' c='gtsam::BinaryMeasurement'/>
<use f='codebrowser/gtsam/sfm/BinaryMeasurement.h' l='36'/>
<use f='codebrowser/gtsam/sfm/BinaryMeasurement.h' l='51' c='_ZN5gtsam17BinaryMeasurementC1EmmRKT_RKSt10shared_ptrINS_10noiseModel4BaseEE'/>
<ovr f='codebrowser/gtsam/linear/GaussianFactor.h' l='38' c='gtsam::GaussianFactor'/>
<use f='codebrowser/gtsam/linear/GaussianFactor.h' l='38'/>
<use f='codebrowser/gtsam/linear/GaussianFactor.h' l='43'/>
<ovr f='codebrowser/gtsam/nonlinear/NonlinearFactor.h' l='69' c='gtsam::NonlinearFactor'/>
<use f='codebrowser/gtsam/nonlinear/NonlinearFactor.h' l='69'/>
<use f='codebrowser/gtsam/nonlinear/NonlinearFactor.h' l='74'/>
<use f='codebrowser/gtsam/nonlinear/NonlinearFactorGraph.h' l='93' c='_ZNK5gtsam20NonlinearFactorGraph11printErrorsERKNS_6ValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS9_mEERKSC_IFbPKNS_6FactorEdmEE'/>
<use f='codebrowser/gtsam/nonlinear/NonlinearFactorGraph.h' l='94' c='_ZNK5gtsam20NonlinearFactorGraph11printErrorsERKNS_6ValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS9_mEERKSC_IFbPKNS_6FactorEdmEE'/>
<size>32</size>
<doc f='codebrowser/gtsam/inference/Factor.h' l='42'>/**
   * This is the base class for all factor types, as well as conditionals, 
   * which are implemented as specialized factors.  This class does not store any
   * data other than its keys.  Derived classes store data such as matrices and
   * probability tables.
   *
   * The `error` method is used to evaluate the factor, and is the only method
   * that is required to be implemented in derived classes, although it has a 
   * default implementation that throws an exception.
   * 
   * There are five broad classes of factors that derive from Factor:
   *
   * - \b Nonlinear factors, such as \class NonlinearFactor and \class NoiseModelFactor, which
   *   represent a nonlinear likelihood function over a set of variables.
   * - \b Gaussian factors, such as \class JacobianFactor and \class HessianFactor, which
   *   represent a Gaussian likelihood over a set of variables.
   * - \b Discrete factors, such as \class DiscreteFactor and \class DecisionTreeFactor, which
   *   represent a discrete distribution over a set of variables.
   * - \b Hybrid factors, such as \class HybridFactor, which represent a mixture of
   *   Gaussian and discrete distributions over a set of variables.
   * - \b Symbolic factors, used to represent a graph structure, such as
   *   \class SymbolicFactor, only used for symbolic elimination etc.
   *
   * Note that derived classes must also redefine the `This` and `shared_ptr`
   * typedefs. See JacobianFactor, etc. for examples.
   * 
   * \nosubgrouping
   */</doc>
<mbr r='gtsam::Factor::keys_' o='64' t='KeyVector'/>
<fun r='_ZN5gtsam6FactorC1Ev'/>
<fun r='_ZN5gtsam6FactorC1ERKT_'/>
<fun r='_ZN5gtsam6FactorC1ET_S1_'/>
<fun r='_ZN5gtsam6Factor8FromKeysERKT_'/>
<fun r='_ZN5gtsam6Factor13FromIteratorsET_S1_'/>
<fun r='_ZN5gtsam6FactorD1Ev'/>
<fun r='_ZNK5gtsam6Factor5emptyEv'/>
<fun r='_ZNK5gtsam6Factor5frontEv'/>
<fun r='_ZNK5gtsam6Factor4backEv'/>
<fun r='_ZNK5gtsam6Factor4findEm'/>
<fun r='_ZNK5gtsam6Factor4keysEv'/>
<fun r='_ZNK5gtsam6Factor5beginEv'/>
<fun r='_ZNK5gtsam6Factor3endEv'/>
<fun r='_ZNK5gtsam6Factor5errorERKNS_12HybridValuesE'/>
<fun r='_ZNK5gtsam6Factor4sizeEv'/>
<fun r='_ZNK5gtsam6Factor5printERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS6_mEE'/>
<fun r='_ZNK5gtsam6Factor9printKeysERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS6_mEE'/>
<fun r='_ZNK5gtsam6Factor6equalsERKS0_d'/>
<fun r='_ZN5gtsam6Factor4keysEv'/>
<fun r='_ZN5gtsam6Factor5beginEv'/>
<fun r='_ZN5gtsam6Factor3endEv'/>
<fun r='_ZN5gtsam6Factor9serializeERT_j'/>
<use f='codebrowser/gtsam/linear/GaussianFactorGraph.h' l='396' c='_ZNK5gtsam19GaussianFactorGraph11printErrorsERKNS_12VectorValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS9_mEERKSC_IFbPKNS_6FactorEdmEE'/>
<use f='codebrowser/gtsam/linear/GaussianFactorGraph.h' l='399' c='_ZNK5gtsam19GaussianFactorGraph11printErrorsERKNS_12VectorValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS9_mEERKSC_IFbPKNS_6FactorEdmEE'/>
<size>32</size>
<ovr f='codebrowser/gtsam/discrete/DiscreteFactor.h' l='40' c='gtsam::DiscreteFactor'/>
<use f='codebrowser/gtsam/discrete/DiscreteFactor.h' l='40'/>
<use f='codebrowser/gtsam/discrete/DiscreteFactor.h' l='46'/>
<size>32</size>
<ovr f='codebrowser/gtsam/hybrid/HybridFactor.h' l='51' c='gtsam::HybridFactor'/>
<use f='codebrowser/gtsam/hybrid/HybridFactor.h' l='51'/>
<use f='codebrowser/gtsam/hybrid/HybridFactor.h' l='71'/>
<use f='codebrowser/gtsam/hybrid/HybridFactor.h' l='141' c='_ZNK5gtsam12HybridFactor8restrictERKNS_14DiscreteValuesE'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactor.h' l='161' c='_ZNK5gtsam20HybridGaussianFactor8restrictERKNS_14DiscreteValuesE'/>
<use f='codebrowser/gtsam/hybrid/HybridNonlinearFactor.h' l='192' c='_ZNK5gtsam21HybridNonlinearFactor8restrictERKNS_14DiscreteValuesE'/>
<use f='codebrowser/gtsam/hybrid/HybridFactorGraph.h' l='32'/>
<use f='codebrowser/gtsam/hybrid/HybridFactorGraph.h' l='38'/>
<use f='codebrowser/gtsam/hybrid/HybridFactorGraph.h' l='40'/>
<use f='codebrowser/gtsam/hybrid/HybridNonlinearFactorGraph.h' l='71' c='_ZNK5gtsam26HybridNonlinearFactorGraph11printErrorsERKNS_12HybridValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS9_mEERKS16475573'/>
<use f='codebrowser/gtsam/hybrid/HybridNonlinearFactorGraph.h' l='74' c='_ZNK5gtsam26HybridNonlinearFactorGraph11printErrorsERKNS_12HybridValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS9_mEERKS16475573'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianConditional.h' l='245' c='_ZNK5gtsam25HybridGaussianConditional8restrictERKNS_14DiscreteValuesE'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.h' l='58' c='_ZN5gtsam15EliminateHybridERKNS_25HybridGaussianFactorGraphERKNS_8OrderingE'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.h' l='73'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.h' l='173' c='_ZNK5gtsam25HybridGaussianFactorGraph11printErrorsERKNS_12HybridValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS9_mEERKSC7351064'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.h' l='176' c='_ZNK5gtsam25HybridGaussianFactorGraph11printErrorsERKNS_12HybridValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS9_mEERKSC7351064'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.h' l='237' c='_ZNK5gtsam25HybridGaussianFactorGraph9eliminateERKNS_8OrderingE'/>
<use f='codebrowser/gtsam/hybrid/HybridConditional.h' l='73'/>
<use f='codebrowser/gtsam/hybrid/HybridConditional.h' l='182' c='_ZNK5gtsam17HybridConditional5innerEv'/>
<use f='codebrowser/gtsam/hybrid/HybridConditional.h' l='227' c='_ZNK5gtsam17HybridConditional8restrictERKNS_14DiscreteValuesE'/>
<use f='codebrowser/gtsam/hybrid/HybridConditional.h' l='245' c='_ZN5gtsam17HybridConditional9serializeERT_j'/>
<use f='codebrowser/gtsam/hybrid/HybridConditional.h' l='246' c='_ZN5gtsam17HybridConditional9serializeERT_j'/>
<use f='codebrowser/gtsam/hybrid/HybridConditional.h' l='248' c='_ZN5gtsam17HybridConditional9serializeERT_j'/>
<use f='codebrowser/gtsam/hybrid/HybridConditional.h' l='249' c='_ZN5gtsam17HybridConditional9serializeERT_j'/>
<use f='codebrowser/gtsam/hybrid/HybridConditional.h' l='252' c='_ZN5gtsam17HybridConditional9serializeERT_j'/>
<use f='codebrowser/gtsam/hybrid/HybridConditional.h' l='254' c='_ZN5gtsam17HybridConditional9serializeERT_j'/>
<size>32</size>
<ovr f='codebrowser/gtsam/symbolic/SymbolicFactor.h' l='38' c='gtsam::SymbolicFactor'/>
<use f='codebrowser/gtsam/symbolic/SymbolicFactor.h' l='38'/>
<use f='codebrowser/gtsam/symbolic/SymbolicFactor.h' l='43'/>
<use f='codebrowser/gtsam/symbolic/SymbolicFactor.h' l='80' c='_ZN5gtsam14SymbolicFactorC1ERKNS_6FactorE'/>
<use f='codebrowser/gtsam/inference/JunctionTree-inst.h' l='43'/>
<size>32</size>
<use f='codebrowser/gtsam/hybrid/HybridConditional.cpp' l='173' c='_ZNK5gtsam17HybridConditional8restrictERKNS_14DiscreteValuesE'/>
<size>32</size>
<use f='codebrowser/gtsam/hybrid/HybridGaussianConditional.cpp' l='367' c='_ZNK5gtsam25HybridGaussianConditional8restrictERKNS_14DiscreteValuesE'/>
<size>32</size>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactor.cpp' l='203' c='_ZNK5gtsam20HybridGaussianFactor8restrictERKNS_14DiscreteValuesE'/>
<size>32</size>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.cpp' l='83' c='_ZN5gtsamL17throwRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS_6FactorEE'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.cpp' l='98' c='_ZN5gtsamL11printFactorERKSt10shared_ptrINS_6FactorEERKNS_14DiscreteValuesERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEE'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.cpp' l='156' c='_ZNK5gtsam25HybridGaussianFactorGraph11printErrorsERKNS_12HybridValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS9_mEERKSC7351064'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.cpp' l='221' c='_ZN5gtsamL21continuousEliminationERKNS_25HybridGaussianFactorGraphERKNS_8OrderingE'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.cpp' l='319' c='_ZN5gtsamL19discreteEliminationERKNS_25HybridGaussianFactorGraphERKNS_8OrderingE'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.cpp' l='378' c='_ZN5gtsamL20createDiscreteFactorERKNS_12DecisionTreeImNS_6ResultEEERKNS_12DiscreteKeysE'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.cpp' l='414' c='_ZN5gtsamL26createHybridGaussianFactorERKNS_12DecisionTreeImNS_6ResultEEERKNS_12DiscreteKeysE'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.cpp' l='448' c='_ZNK5gtsam25HybridGaussianFactorGraph9eliminateERKNS_8OrderingE'/>
<use f='codebrowser/gtsam/hybrid/HybridGaussianFactorGraph.cpp' l='535' c='_ZN5gtsam15EliminateHybridERKNS_25HybridGaussianFactorGraphERKNS_8OrderingE'/>
<size>32</size>
<use f='codebrowser/gtsam/hybrid/HybridJunctionTree.cpp' l='47'/>
<size>32</size>
<use f='codebrowser/gtsam/hybrid/HybridNonlinearFactor.cpp' l='245' c='_ZNK5gtsam21HybridNonlinearFactor8restrictERKNS_14DiscreteValuesE'/>
<size>32</size>
<use f='codebrowser/gtsam/hybrid/HybridNonlinearFactorGraph.cpp' l='48' c='_ZNK5gtsam26HybridNonlinearFactorGraph11printErrorsERKNS_12HybridValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS9_mEERKS16475573'/>
<size>32</size>
<use f='codebrowser/gtsam/hybrid/tests/testSerializationHybrid.cpp' l='43'/>
<use f='codebrowser/gtsam/hybrid/tests/testSerializationHybrid.cpp' l='43' c='_ZN5boost13serialization4guidEv'/>
<use f='codebrowser/gtsam/hybrid/tests/testSerializationHybrid.cpp' l='43'/>
<use f='codebrowser/gtsam/hybrid/tests/testSerializationHybrid.cpp' l='43'/>
<use f='codebrowser/gtsam/hybrid/tests/testSerializationHybrid.cpp' l='43'/>
<size>32</size>
<use f='codebrowser/gtsam/linear/GaussianFactorGraph.cpp' l='526' c='_ZNK5gtsam19GaussianFactorGraph11printErrorsERKNS_12VectorValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS9_mEERKSC_IFbPKNS_6FactorEdmEE'/>
<size>32</size>
<use f='codebrowser/gtsam/nonlinear/NonlinearFactorGraph.cpp' l='73' c='_ZNK5gtsam20NonlinearFactorGraph11printErrorsERKNS_6ValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFS9_mEERKSC_IFbPKNS_6FactorEdmEE'/>
<size>32</size>
<use f='codebrowser/tests/testNonlinearFactorGraph.cpp' l='315' c='_ZN35NonlinearFactorGraphprintErrorsTest3runER10TestResult'/>
<size>32</size>
