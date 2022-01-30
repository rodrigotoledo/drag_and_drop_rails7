import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"
import { put, get, post, patch, destroy } from "@rails/request.js"
export default class extends Controller {
  connect() {
    this.sortable = Sortable.create(this.element, {
      animation: 150,
      onEnd: this.updatePosition.bind(this)
    })
  }

  async updatePosition(event) {
    const response = await put('/update_position', {
      body: JSON.stringify({
        sgid: event.item.dataset.sgid,
        position: event.newIndex + 1
      })
    })
    if (response.ok) {
      console.log(event.item.dataset.sgid)
    }
  }
}
