cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  primary-intervertebral-disc-disorders---primary:
    run: primary-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  intervertebral-disc-disorders-hemilaminectomy---primary:
    run: intervertebral-disc-disorders-hemilaminectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: primary-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-fenestration---primary:
    run: intervertebral-disc-disorders-fenestration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-hemilaminectomy---primary/output
  intervertebral-disc-disorders-interbody---primary:
    run: intervertebral-disc-disorders-interbody---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-fenestration---primary/output
  intervertebral-disc-disorders-posterior---primary:
    run: intervertebral-disc-disorders-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-interbody---primary/output
  intervertebral-disc-disorders-laser---primary:
    run: intervertebral-disc-disorders-laser---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-posterior---primary/output
  intervertebral-disc-disorders-revision---primary:
    run: intervertebral-disc-disorders-revision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-laser---primary/output
  intervertebral-disc-disorders-fusion---primary:
    run: intervertebral-disc-disorders-fusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-revision---primary/output
  anterolateral-intervertebral-disc-disorders---primary:
    run: anterolateral-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-fusion---primary/output
  thoracic-intervertebral-disc-disorders---primary:
    run: thoracic-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: anterolateral-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-compression---primary:
    run: intervertebral-disc-disorders-compression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: thoracic-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-replacement---primary:
    run: intervertebral-disc-disorders-replacement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-compression---primary/output
  intervertebral-disc-disorders-removal---primary:
    run: intervertebral-disc-disorders-removal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-replacement---primary/output
  percutaneous-intervertebral-disc-disorders---primary:
    run: percutaneous-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-removal---primary/output
  intervertebral-disc-disorders-specified---primary:
    run: intervertebral-disc-disorders-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: percutaneous-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-automated---primary:
    run: intervertebral-disc-disorders-automated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-specified---primary/output
  intervertebral-disc-disorders-coblat---primary:
    run: intervertebral-disc-disorders-coblat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-automated---primary/output
  myelopathy-intervertebral-disc-disorders---primary:
    run: myelopathy-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-coblat---primary/output
  intervertebral-disc-disorders-disordr---primary:
    run: intervertebral-disc-disorders-disordr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: myelopathy-intervertebral-disc-disorders---primary/output
  disc---primary:
    run: disc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-disordr---primary/output
  intervertebral-disc-disorders-displacement---primary:
    run: intervertebral-disc-disorders-displacement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: disc---primary/output
  intervertebral-disc-disorders-prolapsed---primary:
    run: intervertebral-disc-disorders-prolapsed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-displacement---primary/output
  intervertebral-disc-disorders-schmorl---primary:
    run: intervertebral-disc-disorders-schmorl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-prolapsed---primary/output
  intervertebral-disc-disorders-region---primary:
    run: intervertebral-disc-disorders-region---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-schmorl---primary/output
  prosthetic-intervertebral-disc-disorders---primary:
    run: prosthetic-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-region---primary/output
  intervertebral-disc-disorders-degeneration---primary:
    run: intervertebral-disc-disorders-degeneration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: prosthetic-intervertebral-disc-disorders---primary/output
  radiculopathy-intervertebral-disc-disorders---primary:
    run: radiculopathy-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-degeneration---primary/output
  other-intervertebral-disc-disorders---primary:
    run: other-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: radiculopathy-intervertebral-disc-disorders---primary/output
  annular-intervertebral-disc-disorders---primary:
    run: annular-intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: other-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-resorption---primary:
    run: intervertebral-disc-disorders-resorption---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: annular-intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders-calcification---primary:
    run: intervertebral-disc-disorders-calcification---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-resorption---primary/output
  intervertebral-disc-disorders---primary:
    run: intervertebral-disc-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-calcification---primary/output
  intervertebral-disc-disorders-procedure---primary:
    run: intervertebral-disc-disorders-procedure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders---primary/output
  intervertebral-disc-disorders---secondary:
    run: intervertebral-disc-disorders---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-procedure---primary/output
  cervical-intervertebral-disc-disorders---secondary:
    run: cervical-intervertebral-disc-disorders---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders---secondary/output
  intervertebral-disc-disorders-hemilaminectomy---secondary:
    run: intervertebral-disc-disorders-hemilaminectomy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: cervical-intervertebral-disc-disorders---secondary/output
  intervertebral-disc-disorders-fenestration---secondary:
    run: intervertebral-disc-disorders-fenestration---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-hemilaminectomy---secondary/output
  intervertebral-disc-disorders-interbody---secondary:
    run: intervertebral-disc-disorders-interbody---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-fenestration---secondary/output
  intervertebral-disc-disorders-specified---secondary:
    run: intervertebral-disc-disorders-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-interbody---secondary/output
  thoracic-intervertebral-disc-disorders---secondary:
    run: thoracic-intervertebral-disc-disorders---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-specified---secondary/output
  intervertebral-disc-disorders-graft---secondary:
    run: intervertebral-disc-disorders-graft---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: thoracic-intervertebral-disc-disorders---secondary/output
  intervertebral-disc-disorders-costotransversectomy---secondary:
    run: intervertebral-disc-disorders-costotransversectomy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-graft---secondary/output
  endoscopic-intervertebral-disc-disorders---secondary:
    run: endoscopic-intervertebral-disc-disorders---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-costotransversectomy---secondary/output
  intervertebral-disc-disorders-lumbar---secondary:
    run: intervertebral-disc-disorders-lumbar---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: endoscopic-intervertebral-disc-disorders---secondary/output
  intervertebral-disc-disorders-posterior---secondary:
    run: intervertebral-disc-disorders-posterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-lumbar---secondary/output
  intervertebral-disc-disorders-instrumentation---secondary:
    run: intervertebral-disc-disorders-instrumentation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-posterior---secondary/output
  intervertebral-disc-disorders-replacement---secondary:
    run: intervertebral-disc-disorders-replacement---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-instrumentation---secondary/output
  other-intervertebral-disc-disorders---secondary:
    run: other-intervertebral-disc-disorders---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-replacement---secondary/output
  anterolateral-intervertebral-disc-disorders---secondary:
    run: anterolateral-intervertebral-disc-disorders---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: other-intervertebral-disc-disorders---secondary/output
  intervertebral-disc-disorders-operation---secondary:
    run: intervertebral-disc-disorders-operation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: anterolateral-intervertebral-disc-disorders---secondary/output
  intervertebral-disc-disorders-destruction---secondary:
    run: intervertebral-disc-disorders-destruction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-operation---secondary/output
  intervertebral-disc-disorders-discography---secondary:
    run: intervertebral-disc-disorders-discography---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-destruction---secondary/output
  mechanical-intervertebral-disc-disorders---secondary:
    run: mechanical-intervertebral-disc-disorders---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-discography---secondary/output
  intervertebral-disc-disorders-coblation---secondary:
    run: intervertebral-disc-disorders-coblation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: mechanical-intervertebral-disc-disorders---secondary/output
  intervertebral-disc-disorders-thermocoagulation---secondary:
    run: intervertebral-disc-disorders-thermocoagulation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-coblation---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: intervertebral-disc-disorders-thermocoagulation---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
