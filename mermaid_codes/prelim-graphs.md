```mermaid

flowchart TD
classDef singleline fill=none,color=black,font-size=16px,font-weight=bold;

    %% ======================
    %% INPUTS
    %% ======================
    subgraph Inputs[Input Data Sources]
        A1[RGB Cameras]
        A2[Depth Cameras]
        A3[Milk Production Data]
        A4[Rumen Bolus Sensors]
        A5[Temp & Humidity Sensors]
        A6[Barn Layout Metadata]
    end

    %% ======================
    %% LEVEL 1: VISUAL SENSOR LAYER
    %% ======================
    subgraph L1[Level 1: Visual Sensor Layer]:::singleline
        B1[Preprocessing<br>Frame Cleaning, Stabilization]
        B2[Behavior Extraction<br>Respiration, Panting, Posture]
        B3[Cow Tracking & Identification]
    end

    %% ======================
    %% LEVEL 2: DATA EMBEDDING LAYER
    %% ======================
    subgraph L2[Level 2: Data Embedding & Fusion Layer]:::singleline
        C1[Feature Encoding<br>Vision Features]
        C2[Fusion Engine<br>Vision + Bolus + Milk + THI]
        C3[Unified Multimodal Embedding]
    end

    %% ======================
    %% LEVEL 3: DECISION LAYER
    %% ======================
    subgraph L3[Level 3: Decision Layer]:::singleline
        D1[Heat Stress Prediction Models]
        D2[Zone-Level Heat Mapping]
        D3[Cooling Control Engine<br>Rules + ML Decisions]
    end

    %% ======================
    %% OUTPUTS
    %% ======================
    subgraph Outputs[Outputs / Actions]
        O1[Activate Fans]
        O2[Trigger Sprinklers/Foggers]
        O3[Send Alerts to Farmer]
        O4[Generate Heat Stress Phenotypes]
        O5[Log Data for Genetic Selection]
    end

    %% ======================
    %% CONNECTIONS
    %% ======================
    A1 --> B1
    A2 --> B1
    B1 --> B2 --> B3

    A3 --> C1
    A4 --> C1
    A5 --> C1
    A6 --> C1

    B3 --> C1
    C1 --> C2 --> C3

    C3 --> D1 --> D2 --> D3

    D3 --> O1
    D3 --> O2
    D1 --> O3
    C3 --> O4
    O4 --> O5
```