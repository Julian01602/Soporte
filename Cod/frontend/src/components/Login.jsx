import { useState } from "react";
import { useAuth } from "../context/AuthContext";

export const Login = ({ onSwitchToRegister }) => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");

  const { login } = useAuth();

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      setError("");
      await login(email, password);
    } catch (err) { // <-- Aquí ya está cerrado el try y capturado el error con (err)
      setError("Correo o contraseña incorrectos");
    } // <-- ¡Esta llave faltaba para cerrar el try!
  };

  return (
    <div className="login-split-container">
      {/* Columna Izquierda: Logo y Slogan */}
      <div className="login-left-side">
        <div className="brand-top">
          <div className="sena-logo-container">
            <span className="sena-icon">🟢</span>
          </div>
          <span className="institution-name">Servicio Nacional de Aprendizaje - SENA</span>
        </div>
        
        <div className="brand-hero">
          <h1>Gestión clara para mantener todo funcionando.</h1>
          <p>Registra, asigna y haz seguimiento a las solicitudes técnicas de tu centro de formación.</p>
        </div>
      </div>

      {/* Columna Derecha: Formulario de Inicio de Sesión */}
      <div className="login-right-side">
        <div className="auth-card">
          <span className="text-muted small fw-bold text-uppercase tracking-wider">BIENVENIDO</span>
          <h2 className="fw-bold mt-1 mb-1">Inicia sesión</h2>
          <p className="text-secondary mb-4" style={{ fontSize: "0.9rem" }}>
            Ingresa con tu cuenta institucional para continuar.
          </p>

          {error && <div className="alert alert-danger py-2">{error}</div>}

          <form onSubmit={handleSubmit}>
            <div className="mb-3">
              <label className="form-label text-secondary small fw-semibold">Correo electrónico</label>
              <input
                type="email"
                className="form-control"
                placeholder="nombre@sena.edu.co"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
              />
            </div>

            <div className="mb-4">
              <label className="form-label text-secondary small fw-semibold">Contraseña</label>
              <input
                type="password"
                className="form-control"
                placeholder="Tu contraseña"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
              />
            </div>

            <button type="submit" className="btn btn-primary w-100 py-2">
              Entrar
            </button>
          </form>

          <p className="text-center mt-4" style={{ fontSize: "0.9rem" }}>
            ¿Aún no tienes cuenta?{" "}
            <button
              type="button"
              className="btn btn-link p-0 fw-semibold text-decoration-none"
              style={{ color: "var(--sena)" }}
              onClick={onSwitchToRegister}
            >
              Regístrate aquí
            </button>
          </p>
        </div>
      </div>
    </div>
  );
};