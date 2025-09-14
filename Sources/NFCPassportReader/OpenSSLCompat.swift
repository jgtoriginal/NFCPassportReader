// Re-export OpenSSL module with a stable name for clients
// This helps with differences between OpenSSL module names across package managers
#if canImport(OpenSSL)
@_exported import OpenSSL
#elseif canImport(COpenSSL)
@_exported import COpenSSL
#elseif canImport(OpenSSLKit)
@_exported import OpenSSLKit
#else
#error("No OpenSSL module found. Ensure an OpenSSL package is added to dependencies.")
#endif
