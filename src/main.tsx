import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { App } from "@/App";
import { useThemeStore } from "@/store/themeStore";
import "@/styles/global.css";

useThemeStore.getState().init();

createRoot(document.getElementById("root")!).render(
  <StrictMode>
    <App />
  </StrictMode>
);
