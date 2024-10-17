```mermaid
graph LR
    %% First, fix the main structure to enforce vertical alignment
    subgraph "Converter-Tools"
        direction TB
        A1[Lobster-python]
        A2[Lobster-trlc]
        A3[Lobster-json]
        A4[Lobster-cpp]
    end
 
    subgraph ".lobster json schema"
        direction TB
        B1[Python.lobster]
        B2[Trlc.lobster]
        B3[Json.lobster]
        B4[Cpp.lobster]
    end
 
    %% Create a subgraph to enforce vertical ordering of Lobster-online-report, Lobster-report -> report.lobster, and Tracing policy -> lobster.config
    subgraph "Main Flow"
        direction TB
        D1[Lobster-online-report]
        D1 ---> D2
        D2[Lobster-report -> report.lobster]
        D3[Tracing policy -> lobster.config]
        D3 ---> D2
    end
 
    subgraph "Renderer"
        direction TB
        C1[html]
        C2[CI]
        C3["?"]
    end
 
    %% Main connections
    A1 ---> B1
    A2 ---> B2
    A3 ---> B3
    A4 ---> B4
 
    %% Connect all json schema elements to Lobster-report -> report.lobster
    B1 ----> D2
    B2 ----> D2
    B3 ----> D2
    B4 ----> D2
 
    %% Connect Lobster-report -> report.lobster to renderers
    D2 ---> C1
    D2 ---> C2
    D2 ---> C3
 ```
 