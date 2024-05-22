import { BrowserRouter as Router, Routes, Route } from "react-router-dom"
import Home from "./components/pages/developer/ui/home/Home"
import Single from "./components/pages/developer/ui/single/Single"
function App() {

  return (
    <>
        <Router>
              <Routes>
                    <Route path="/home" element={<Home/>}/>
                    <Route path="/single" element={<Single/>}/>
              </Routes>
        </Router>
    </>
  )
}

export default App
