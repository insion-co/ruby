# Reference
<details><summary><code>client.<a href="/lib/InsionClient/client.rb">moderate_a_record</a>(request) -> InsionClient::Types::ModerateResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create or update a record and return its moderation result immediately.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.moderate_a_record(
  client_id: "clientId",
  name: "name",
  entity: "entity",
  content: "content"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**passthrough:** `Internal::Types::Boolean` — Moderate without persisting the record's name or content, or the user's email, name, or username.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `InsionClient::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/InsionClient/client.rb">ingest_a_record</a>(request) -> InsionClient::Types::IngestRecordResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create or update a content record for asynchronous moderation. Results are delivered through webhook events when moderation is performed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ingest_a_record(
  client_id: "clientId",
  name: "name",
  entity: "entity",
  content: "content"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `InsionClient::Types::RecordInput` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `InsionClient::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/InsionClient/client.rb">delete_a_record</a>(request) -> InsionClient::Types::SuccessResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a record from the moderation system by its client ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.delete_a_record(client_id: "clientId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**client_id:** `String` — Your unique identifier for the record.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `InsionClient::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/InsionClient/client.rb">ingest_a_user</a>(request) -> InsionClient::Types::IngestUserResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create or update a user without ingesting a record.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ingest_a_user(client_id: "clientId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `InsionClient::Types::UserInput` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `InsionClient::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/InsionClient/client.rb">list_records</a>() -> InsionClient::Types::ListRecordsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the records belonging to the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.list_records
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**limit:** `Integer` — Maximum number of items to return.
    
</dd>
</dl>

<dl>
<dd>

**starting_after:** `String` — Return items after this Insion ID. Cannot be used with ending_before.
    
</dd>
</dl>

<dl>
<dd>

**ending_before:** `String` — Return items before this Insion ID. Cannot be used with starting_after.
    
</dd>
</dl>

<dl>
<dd>

**client_id:** `String` — Filter by your record identifier.
    
</dd>
</dl>

<dl>
<dd>

**user:** `String` — Filter by Insion user ID.
    
</dd>
</dl>

<dl>
<dd>

**entity:** `String` — Filter by record entity.
    
</dd>
</dl>

<dl>
<dd>

**status:** `InsionClient::Types::GetAPIV1RecordsRequestStatus` — Filter by moderation status.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `InsionClient::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/InsionClient/client.rb">retrieve_a_record</a>(record_id:) -> InsionClient::Types::RecordResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve one record by its Insion record ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.retrieve_a_record(record_id: "recordId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**record_id:** `String` — Insion record ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `InsionClient::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/InsionClient/client.rb">list_users</a>() -> InsionClient::Types::ListUsersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

List the users belonging to the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.list_users
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**limit:** `Integer` — Maximum number of items to return.
    
</dd>
</dl>

<dl>
<dd>

**starting_after:** `String` — Return items after this Insion ID. Cannot be used with ending_before.
    
</dd>
</dl>

<dl>
<dd>

**ending_before:** `String` — Return items before this Insion ID. Cannot be used with starting_after.
    
</dd>
</dl>

<dl>
<dd>

**client_id:** `String` — Filter by your user identifier.
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — Filter by user email.
    
</dd>
</dl>

<dl>
<dd>

**status:** `InsionClient::Types::GetAPIV1UsersRequestStatus` — Filter by user action status.
    
</dd>
</dl>

<dl>
<dd>

**user:** `String` — Filter by Insion user ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `InsionClient::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/InsionClient/client.rb">retrieve_a_user</a>(user_id:) -> InsionClient::Types::UserResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve one user by its Insion user ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.retrieve_a_user(user_id: "userId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**user_id:** `String` — Insion user ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `InsionClient::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.<a href="/lib/InsionClient/client.rb">create_an_appeal</a>(user_id:, request) -> InsionClient::Types::CreateAppealResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an appeal for a suspended user. Appeals must be enabled for the organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.create_an_appeal(
  user_id: "userId",
  text: "text"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**user_id:** `String` — Insion user ID.
    
</dd>
</dl>

<dl>
<dd>

**text:** `String` — The appeal message.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `InsionClient::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

