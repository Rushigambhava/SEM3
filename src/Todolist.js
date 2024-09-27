// src/TodoList.js
import React, { useState } from 'react';

const TodoList = () => {
  const [formData, setFormData] = useState({ fullName: '', imageUrl: '', address: '' });
  const [todos, setTodos] = useState([]);
  const [editIndex, setEditIndex] = useState(null);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });
  };

  const handleAddTodo = () => {
    if (!formData.fullName || !formData.imageUrl || !formData.address) return;

    if (editIndex !== null) {
      const updatedTodos = todos.map((todo, index) =>
        index === editIndex ? formData : todo
      );
      setTodos(updatedTodos);
      setEditIndex(null);
    } else {
      setTodos([...todos, formData]);
    }

    setFormData({ fullName: '', imageUrl: '', address: '' });
  };

  const handleEditTodo = (index) => {
    setFormData(todos[index]);
    setEditIndex(index);
  };

  const handleDeleteTodo = (index) => {
    const updatedTodos = todos.filter((_, idx) => idx !== index);
    setTodos(updatedTodos);
  };

  return (
    <div className="container">
      <h1>Contact List</h1>
      <input
        type="text"
        name="fullName"
        value={formData.fullName}
        onChange={handleChange}
        placeholder="Full Name"
      />
      <input
        type="text"
        name="imageUrl"
        value={formData.imageUrl}
        onChange={handleChange}
        placeholder="Image URL"
      />
      <input
        type="text"
        name="address"
        value={formData.address}
        onChange={handleChange}
        placeholder="Address"
      />
      <button onClick={handleAddTodo}>
        {editIndex !== null ? 'Update' : 'Add'}
      </button>
      <ul>
        {todos.map((todo, index) => (
          <li key={index}>
            <img src={todo.imageUrl} alt={todo.fullName} style={{ width: '50px', height: '50px', borderRadius: '50%' }} />
            <div>
              <h4>{todo.fullName}</h4>
              <p>{todo.address}</p>
            </div>
            <div>
              <button className="edit-button" onClick={() => handleEditTodo(index)}>Edit</button>
              <button onClick={() => handleDeleteTodo(index)}>Delete</button>
            </div>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default TodoList;
