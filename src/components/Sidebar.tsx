import { useEffect, useRef } from "react";
import { Link, useLocation } from "wouter";
import {
  LayoutGrid,
  Lightbulb,
  PlayCircle,
  Settings,
  UserRound,
} from "lucide-react";
import { useUIStore } from "@/store/uiStore";
import styles from "@/components/Sidebar.module.css";

const LINKS = [
  { href: "/in-progress", label: "In progress", icon: PlayCircle },
  { href: "/all-modules", label: "All modules", icon: LayoutGrid },
  { href: "/module-requests", label: "Request a module", icon: Lightbulb },
  { href: "/app-settings", label: "App settings", icon: Settings },
  { href: "/preferences", label: "Preferences", icon: UserRound },
] as const;

export function Sidebar() {
  const open = useUIStore((s) => s.sidebarOpen);
  const setOpen = useUIStore((s) => s.setSidebarOpen);
  const [location] = useLocation();

  const firstMount = useRef(true);
  useEffect(() => {
    if (firstMount.current) {
      firstMount.current = false;
      return;
    }
    if (window.matchMedia("(max-width: 767px)").matches) {
      setOpen(false);
    }
  }, [location, setOpen]);

  useEffect(() => {
    if (!open) return;
    const onKey = (e: KeyboardEvent) => {
      if (e.key === "Escape" && window.matchMedia("(max-width: 767px)").matches) {
        setOpen(false);
      }
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, [open, setOpen]);

  return (
    <>
      <aside
        className={styles.sidebar}
        data-open={open}
        aria-hidden={!open}
      >
        <nav className={styles.nav}>
          {LINKS.map(({ href, label, icon: Icon }) => {
            const active = location === href;
            return (
              <Link
                key={href}
                href={href}
                className={active ? styles.itemActive : styles.item}
              >
                <Icon size={16} />
                <span>{label}</span>
              </Link>
            );
          })}
        </nav>
      </aside>
      {open ? (
        <button
          type="button"
          className={styles.backdrop}
          onClick={() => setOpen(false)}
          aria-label="Close menu"
          tabIndex={-1}
        />
      ) : null}
    </>
  );
}
