@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <!-- Profile Card -->
            <div class="card shadow-sm">
                <!-- Card Header with Dynamic Title -->
                <div class="card-header bg-white py-3 d-flex justify-content-between align-items-center">
                    <h4 class="mb-0">
                        <i class="fas fa-user-circle me-2"></i>
                        <span id="profileTitle">My Profile</span>
                    </h4>
                    <button id="toggleEdit" class="btn btn-primary btn-sm">
                        <i class="fas fa-edit me-2"></i>Edit Profile
                    </button>
                </div>

                <!-- Card Body -->
                <div class="card-body">
                    <!-- View Mode Section -->
                    <div id="viewMode">
                        <!-- Profile Avatar and Basic Info -->
                        <div class="text-center mb-4">
                            <div class="avatar-placeholder mb-3">
                                <i class="fas fa-user fa-4x text-muted"></i>
                            </div>
                            <h5 class="mb-0">{{ Auth::user()->name }}</h5>
                            <p class="text-muted">{{ Auth::user()->email }}</p>
                        </div>

                        <!-- Profile Details -->
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label fw-bold">Name</label>
                                <input type="text" class="form-control bg-light" value="{{ Auth::user()->name }}" readonly>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label fw-bold">Email</label>
                                <input type="email" class="form-control bg-light" value="{{ Auth::user()->email }}" readonly>
                            </div>
                            <div class="col-12 mb-3">
                                <label class="form-label fw-bold">Member Since</label>
                                <input type="text" class="form-control bg-light" value="{{ Auth::user()->created_at->format('F d, Y') }}" readonly>
                            </div>
                        </div>
                    </div>

                    <!-- Edit Mode Section -->
                    <div id="editMode" style="display: none;">
                        <form id="updateProfileForm" class="needs-validation" novalidate>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label required">Name</label>
                                    <input type="text" class="form-control" name="name"
                                           value="{{ Auth::user()->name }}" required minlength="3">
                                    <div class="invalid-feedback">Name must be at least 3 characters long</div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label required">Email</label>
                                    <input type="email" class="form-control" name="email"
                                           value="{{ Auth::user()->email }}" required>
                                    <div class="invalid-feedback">Please enter a valid email address</div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Current Password</label>
                                    <input type="password" class="form-control" name="current_password">
                                    <small class="text-muted">Required only if changing password</small>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">New Password</label>
                                    <input type="password" class="form-control" name="new_password"
                                           minlength="8">
                                    <small class="text-muted">Leave blank to keep current password</small>
                                </div>
                                <div class="col-12 mb-3">
                                    <label class="form-label">Confirm New Password</label>
                                    <input type="password" class="form-control" name="new_password_confirmation">
                                </div>
                            </div>

                            <!-- Action Buttons -->
                            <div class="d-flex gap-2 justify-content-end">
                                <button type="button" id="cancelEdit" class="btn btn-secondary">
                                    <i class="fas fa-times me-2"></i>Cancel
                                </button>
                                <button type="submit" class="btn btn-primary">
                                    <i class="fas fa-save me-2"></i>Save Changes
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@push('scripts')
<script>
document.addEventListener('DOMContentLoaded', function() {
    // Get button elements
    const toggleEdit = document.getElementById('toggleEdit');
    const viewMode = document.getElementById('viewMode');
    const editMode = document.getElementById('editMode');

    // Add click event listener to toggle button
    toggleEdit.addEventListener('click', function() {
        viewMode.style.display = 'none';
        editMode.style.display = 'block';
        toggleEdit.style.display = 'none';
    });


    // Cancel edit mode
    cancelEdit.addEventListener('click', function() {
        viewMode.style.display = 'block';
        editMode.style.display = 'none';
        toggleEdit.style.display = 'block';
    });

    // Handle form submission
    document.getElementById('updateProfileForm').addEventListener('submit', function(e) {
    e.preventDefault();

    const formData = new FormData(this);

    fetch('/api/profile/update', {
        method: 'POST',
        headers: {
            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
            'Accept': 'application/json',
            'Authorization': 'Bearer ' + localStorage.getItem('auth_token')
        },
        body: formData
    })
    .then(response => response.json())
    .then(data => {
        if (data.status) {
            alert('Profile updated successfully');
            location.reload();
        } else {
            // Display validation errors
            const errors = data.errors;
            let errorMessage = '';
            for (let field in errors) {
                errorMessage += `${errors[field].join('\n')}\n`;
            }
            alert(errorMessage || data.message || 'Update failed');
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('An error occurred while updating profile');
    });
});
});
</script>
@endpush
@endsection
