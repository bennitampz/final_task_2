@extends('layouts.app')

@section('content')
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <!-- Profile Card with Enhanced Design -->
            <div class="card border-0 rounded-3xl shadow-lg overflow-hidden">
                <!-- Modern Card Header -->
                <div class="card-header bg-gradient-to-r from-[#FF2D20] to-[#FF6B4D] py-4 px-6 border-0">
                    <div class="d-flex justify-content-between align-items-center">
                        <h4 class="mb-0 text-white">
                            <i class="fas fa-user-circle me-2"></i>
                            <span id="profileTitle" class="recipe-title">My Profile</span>
                        </h4>
                        <button id="toggleEdit" class="btn btn-light btn-sm rounded-pill px-4">
                            <i class="fas fa-edit me-2"></i>Edit Profile
                        </button>
                    </div>
                </div>

                <!-- Enhanced Card Body -->
                <div class="card-body p-6">
                    <!-- View Mode Section -->
                    <div id="viewMode">
                        <!-- Stylish Profile Avatar -->
                        <div class="text-center mb-5">
                            <div class="avatar-placeholder mb-4">
                                <div class="rounded-circle bg-[#FF2D20]/10 p-4 d-inline-block">
                                    <i class="fas fa-user fa-4x text-[#FF2D20]"></i>
                                </div>
                            </div>
                            <h3 class="recipe-title mb-2">{{ Auth::user()->name }}</h3>
                            <p class="text-muted">{{ Auth::user()->email }}</p>
                        </div>

                        <!-- Modern Profile Details -->
                        <div class="row g-4">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label fw-bold text-[#FF2D20]">Name</label>
                                    <input type="text" class="form-control form-control-lg bg-light rounded-pill" value="{{ Auth::user()->name }}" readonly>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label fw-bold text-[#FF2D20]">Email</label>
                                    <input type="email" class="form-control form-control-lg bg-light rounded-pill" value="{{ Auth::user()->email }}" readonly>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label class="form-label fw-bold text-[#FF2D20]">Member Since</label>
                                    <input type="text" class="form-control form-control-lg bg-light rounded-pill" value="{{ Auth::user()->created_at->format('F d, Y') }}" readonly>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Enhanced Edit Mode Section -->
                    <div id="editMode" style="display: none;">
                        <form id="updateProfileForm" class="needs-validation" novalidate>
                            <div class="row g-4">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="form-label required text-[#FF2D20]">Name</label>
                                        <input type="text" class="form-control form-control-lg rounded-pill" name="name" value="{{ Auth::user()->name }}" required minlength="3">
                                        <div class="invalid-feedback">Name must be at least 3 characters long</div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="form-label required text-[#FF2D20]">Email</label>
                                        <input type="email" class="form-control form-control-lg rounded-pill" name="email" value="{{ Auth::user()->email }}" required>
                                        <div class="invalid-feedback">Please enter a valid email address</div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="form-label text-[#FF2D20]">Current Password</label>
                                        <input type="password" class="form-control form-control-lg rounded-pill" name="current_password">
                                        <small class="text-muted">Required only if changing password</small>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="form-label text-[#FF2D20]">New Password</label>
                                        <input type="password" class="form-control form-control-lg rounded-pill" name="new_password" minlength="8">
                                        <small class="text-muted">Leave blank to keep current password</small>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label class="form-label text-[#FF2D20]">Confirm New Password</label>
                                        <input type="password" class="form-control form-control-lg rounded-pill" name="new_password_confirmation">
                                    </div>
                                </div>
                            </div>

                            <!-- Styled Action Buttons -->
                            <div class="d-flex gap-3 justify-content-end mt-5">
                                <button type="button" id="cancelEdit" class="btn btn-light btn-lg rounded-pill px-5">
                                    <i class="fas fa-times me-2"></i>Cancel
                                </button>
                                <button type="submit" class="btn btn-lg rounded-pill px-5 text-white" style="background-color: #FF2D20">
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
 document.getElementById('updateProfileForm').addEventListener('submit', function(e) {
    e.preventDefault();

    // Get form data
    const formData = new FormData();
    formData.append('name', this.elements['name'].value);
    formData.append('email', this.elements['email'].value);

    if (this.elements['current_password'].value) {
        formData.append('current_password', this.elements['current_password'].value);
    }
    if (this.elements['new_password'].value) {
        formData.append('new_password', this.elements['new_password'].value);
        formData.append('new_password_confirmation', this.elements['new_password_confirmation'].value);
    }

    fetch('/api/profile/update', {
        method: 'POST',
        headers: {
            'Accept': 'application/json',
            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
            // Use session token instead of localStorage
            'Authorization': `Bearer ${document.querySelector('meta[name="api-token"]').getAttribute('content')}`
        },
        body: formData
    })
    .then(response => response.json())
    .then(data => {
        if (data.status) {
            alert('Profile updated successfully');
            location.reload();
        } else {
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
// Add a flag to track if event listener is already added
let isEventListenerAdded = false;

document.addEventListener('DOMContentLoaded', function() {
    // Get all required elements
    const toggleEditBtn = document.getElementById('toggleEdit');
    const viewModeDiv = document.getElementById('viewMode');
    const editModeDiv = document.getElementById('editMode');
    const cancelEditBtn = document.getElementById('cancelEdit');

    // Toggle to edit mode
    toggleEditBtn.addEventListener('click', function() {
        viewModeDiv.style.display = 'none';
        editModeDiv.style.display = 'block';
        toggleEditBtn.style.display = 'none';
    });

    // Toggle back to view mode
    cancelEditBtn.addEventListener('click', function() {
        viewModeDiv.style.display = 'block';
        editModeDiv.style.display = 'none';
        toggleEditBtn.style.display = 'block';
    });

    // Form submission - single event listener
    document.getElementById('updateProfileForm').addEventListener('submit', function(e) {
        e.preventDefault();

        const formData = new FormData();
        formData.append('name', this.elements['name'].value);
        formData.append('email', this.elements['email'].value);

        if (this.elements['current_password'].value) {
            formData.append('current_password', this.elements['current_password'].value);
        }
        if (this.elements['new_password'].value) {
            formData.append('new_password', this.elements['new_password'].value);
            formData.append('new_password_confirmation', this.elements['new_password_confirmation'].value);
        }

        fetch('/api/profile/update', {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
                'Authorization': `Bearer ${document.querySelector('meta[name="api-token"]').getAttribute('content')}`
            },
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.status) {
                alert('Profile updated successfully');
                location.reload();
            } else {
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
