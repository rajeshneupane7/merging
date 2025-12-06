
```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'primaryColor': '#ffffff', 'edgeLabelBackground':'#ffffff', 'fontFamily': 'arial', 'fontSize': '14px'}}}%%
graph TD
    %% --- STYLING ---
    classDef physical fill:#E8F5E9,stroke:#2E7D32,stroke-width:2px,rx:5px,ry:5px;
    classDef conn fill:#E1F5FE,stroke:#0277BD,stroke-width:2px,rx:5px,ry:5px;
    classDef data fill:#EDE7F6,stroke:#4527A0,stroke-width:2px,rx:5px,ry:5px;
    classDef app fill:#FFF3E0,stroke:#EF6C00,stroke-width:2px,rx:5px,ry:5px;
    classDef containerLayer fill:#fafafa,stroke:#999,stroke-width:1px,stroke-dasharray: 5 5,font-weight:bold,color:#555;

    %% --- LAYERS ---
    
    %% LEVEL 4: APPLICATIONS
    subgraph L4 [Level 4: Applications Layer]
        direction LR
        A1(["<b>Precision Ag & Dairy</b><br/>Dashboards, Health Alerts"]):::app
        A2(["<b>Cooperative Platforms</b><br/>Shared Data & Insights"]):::app
    end

    %% LEVEL 3: DATA & COMPUTE
    subgraph L3 [Level 3: Data & Cloud/Edge Layer]
        direction LRs
        D1(["<b>Edge/Fog Nodes</b><br/>Real-time Processing"]):::data
        D2(["<b>Cloud & Fed. Learning</b><br/>Analytics, Privacy"]):::data
        D3(["<b>Digital Twins</b><br/>Simulation & Blockchain"]):::data
    end

    %% LEVEL 2: CONNECTIVITY
    subgraph L2 [Level 2: Connectivity & Networks]
        direction LR
        C1["<b>LPWAN</b><br/>(LoRaWAN, ZigBee)"]:::conn
        C3["<b>Edge Gateway</b><br/>(Aggregation)"]:::conn
        C2["<b>High-Speed Net</b><br/>(5G, WiFi)"]:::conn
    end

    %% LEVEL 1: PHYSICAL
    subgraph L1 [Level 1: Physical Layer]
        direction LR
        P1(["<b>Sensors & Wearables</b><br/>Soil, Weather, Livestock"]):::physical
        P2(["<b>Actuators & Robotics</b><br/>UAVs, Tractors"]):::physical
    end

    %% --- FLOW CONNECTIONS ---

    %% 1. Physical -> Network (Aligned Left and Right to avoid crossing)
    P1 -->|Low Power Data| C1
    P1 -->|Direct Link| C3
    P2 <-->|Control & Video| C2
    
    %% 2. Network -> Gateway/Cloud
    C1 --> C3
    C2 --> C3
    C3 ==>|Filtered Data| D1
    C2 -.->|High Bandwidth Bypass| D2
    
    %% 3. Data Processing
    D1 <-->|Sync & Updates| D2
    D2 <-->|Model Feeds| D3
    
    %% 4. Data -> Apps
    D1 & D2 ===> A1
    D2 & D3 ===> A2

    %% --- CONTAINER STYLING ---
    class L1,L2,L3,L4 containerLayer;
    
    %% Smooth curves for less visual clutter
    linkStyle default interpolate basis stroke-width:2px,fill:none;
    ```