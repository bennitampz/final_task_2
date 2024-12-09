
@extends('layouts.app')

@section('content')
<div class="container py-4">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-sm border-0 rounded-3">
                <div class="card-header bg-white py-3">
                    <h4 class="mb-0"><i class="fas fa-cog me-2"></i>Settings</h4>
                </div>
                <div class="card-body">
                    <div class="settings-sections">
                        <!-- Account Settings -->
                        <div class="settings-section mb-4">
                            <h5 class="text-primary mb-3">Account Settings</h5>
                            <form>
                                <div class="mb-3">
                                    <label class="form-label">Email Notifications</label>
                                    <div class="form-check form-switch">
                                        <input class="form-check-input" type="checkbox" id="emailNotifications">
                                        <label class="form-check-label" for="emailNotifications">Receive email notifications</label>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Language</label>
                                    <select class="form-select">
                                        <option value="en">English</option>
                                        <option value="es">Spanish</option>
                                        <option value="fr">French</option>
                                    </select>
                                </div>
                            </form>
                        </div>

                        <!-- Privacy Settings -->
                        <div class="settings-section mb-4">
                            <h5 class="text-primary mb-3">Privacy Settings</h5>
                            <form>
                                <div class="mb-3">
                                    <label class="form-label">Profile Visibility</label>
                                    <select class="form-select">
                                        <option value="public">Public</option>
                                        <option value="private">Private</option>
                                        <option value="friends">Friends Only</option>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <div class="form-check form-switch">
                                        <input class="form-check-input" type="checkbox" id="showOnline">
                                        <label class="form-check-label" for="showOnline">Show online status</label>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <!-- Theme Settings -->
                        <div class="settings-section mb-4">
                            <h5 class="text-primary mb-3">Theme Settings</h5>
                            <form>
                                <div class="mb-3">
                                    <label class="form-label">Theme Mode</label>
                                    <div class="btn-group w-100" role="group">
                                        <input type="radio" class="btn-check" name="theme" id="light" checked>
                                        <label class="btn btn-outline-primary" for="light">
                                            <i class="fas fa-sun me-2"></i>Light
                                        </label>
                                        <input type="radio" class="btn-check" name="theme" id="dark">
                                        <label class="btn btn-outline-primary" for="dark">
                                            <i class="fas fa-moon me-2"></i>Dark
                                        </label>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <!-- Save Button -->
                        <div class="text-end">
                            <button type="submit" class="btn btn-primary px-4">
                                <i class="fas fa-save me-2"></i>Save Changes
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
.settings-section {
    padding-bottom: 1.5rem;
    border-bottom: 1px solid #eee;
}

.settings-section:last-child {
    border-bottom: none;
}

.btn-outline-primary {
    border-color: #4f46e5;
    color: #4f46e5;
}

.btn-outline-primary:hover,
.btn-outline-primary:focus,
.btn-check:checked + .btn-outline-primary {
    background-color: #4f46e5;
    border-color: #4f46e5;
    color: white;
}

.form-check-input:checked {
    background-color: #4f46e5;
    border-color: #4f46e5;
}

.text-primary {
    color: #4f46e5 !important;
}

.btn-primary {
    background-color: #4f46e5;
    border-color: #4f46e5;
}

.btn-primary:hover {
    background-color: #4338ca;
    border-color: #4338ca;
}
</style>
@endsection
