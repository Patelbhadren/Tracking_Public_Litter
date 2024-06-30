document.getElementById('pickupForm').addEventListener('submit', function(event) {
    event.preventDefault();

    const clientName = document.getElementById('clientName').value;
    const pickupDate = document.getElementById('pickupDate').value;
    const pickupAddress = document.getElementById('pickupAddress').value;
    const itemDescription = document.getElementById('itemDescription').value;
    const itemQuantity = document.getElementById('itemQuantity').value;
    const itemCategory = document.getElementById('itemCategory').value;

    const pickupList = document.getElementById('pickupList');
    const listItem = document.createElement('li');
    listItem.innerHTML = `
        <strong>Client Name:</strong> ${clientName} <br>
        <strong>Pickup Date:</strong> ${pickupDate} <br>
        <strong>Pickup Address:</strong> ${pickupAddress} <br>
        <strong>Item Description:</strong> ${itemDescription} <br>
        <strong>Item Quantity:</strong> ${itemQuantity} <br>
        <strong>Item Category:</strong> ${itemCategory}
    `;

    pickupList.appendChild(listItem);

    document.getElementById('pickupForm').reset();
});