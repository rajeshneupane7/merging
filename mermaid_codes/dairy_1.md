
```mermaid

graph TD
    %% Global Styling
    classDef levelStyle fill:#f9f9f9,stroke:#333,stroke-width:2px,font-weight:bold;
    classDef techStyle fill:#e1f5fe,stroke:#01579b,stroke-width:1px;
    classDef threatStyle fill:#ffebee,stroke:#b71c1c,stroke-width:1px;

    subgraph L1 [Level 1: Conventional / Tech-Beginner]
        direction TB
        T1[<b>Key Technologies</b><br/>• Farm Management Software<br/>• 3rd-Party Data Processing]:::techStyle
        V1[<b>Vulnerabilities & Threats</b><br/>• Phishing & Social Engineering<br/>• Weak Credentials / Default PWs<br/>• Flat Network Architecture<br/>• USB-borne Malware (Consultants)<br/>• Unconsensual Data Sharing]:::threatStyle
        T1 --- V1
    end

    subgraph L2 [Level 2: Sensor-Integrated / Mid-Tech]
        direction TB
        T2[<b>Key Technologies</b><br/>• IoT Sensors (Activity/Milk)<br/>• API Integrations<br/>• International Cloud Storage]:::techStyle
        V2[<b>Vulnerabilities & Threats</b><br/>• Expanded Attack Surface<br/>• Weak IoT/API Protocols<br/>• Data Theft in Transit<br/>• Corporate Data Misuse<br/>• Connectivity Dependence]:::threatStyle
        T2 --- V2
    end

    subgraph L3 [Level 3: Automated / High-Tech]
        direction TB
        T3[<b>Key Technologies</b><br/>• Robotic Milking Systems<br/>• Automated Feeding<br/>• Integrated Management Hubs]:::techStyle
        V3[<b>Vulnerabilities & Threats</b><br/>• Critical System Dependency<br/>• Animal Welfare Risks<br/>• Supply Chain Disruption<br/>• National Food Security Threats]:::threatStyle
        T3 --- V3
    end

    %% Progression Indicators
    L1 ==> L2
    L2 ==> L3

    %% Apply Styles
    class L1,L2,L3 levelStyle
```