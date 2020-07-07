import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        // called when data is broadcast in the cable
        messagesContainer.insertAdjacentHTML('beforeend', data);
        messagesContainer.scrollTo(0, messagesContainer.scrollHeight);

        const input = document.getElementById('message_content');
        input.value = '';
      },
    });
  }
}

export { initChatroomCable };

