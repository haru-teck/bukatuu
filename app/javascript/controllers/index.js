// Import and register all your controllers from the importmap via controllers/**/*_controller
import { Application } from "@hotwired/stimulus"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"

const application = Application.start()

// Stimulus コントローラーを自動的に読み込む
eagerLoadControllersFrom("controllers", application)

export { application }
