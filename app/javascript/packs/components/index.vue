<template>
  <div>
    <!-- 新規作成部分 -->
    <div class="row" style="padding-top: 30px;">
      <div class="col s10 m11">
        <input v-model="newPost" class="form-control" placeholder="本との新しい発見を投稿しよう！">
      </div>
      <div class="col s2 m1">
        <div v-on:click="createPost" class="btn-floating waves-effect waves-light red">
          <i class="material-icons">add</i>
        </div>
      </div>
    </div>
    <!-- カードリスト表示部分 -->

    <div class="row" v-for="post in posts">
      <div class="col s12 m6">
        <div class="card #ffffff white">
          <div class="card-content">
            <span class="card-title">{{ post.title }}</span>
            <p>{{ post.story_1 }}</p>
          </div>
          <div class="card-action">
            <router-link :to="/edit-posts/ + post.id">ストーリーを読む</router-link>
            <span>{{ post.book_name }}</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import axios from 'axios';

  export default {
    data: function () {
      return {
        posts: [],
        newPost: ''
      }
    },
    mounted: function () {
      this.fetchPosts()
    },
    methods: {
      fetchPosts: function () {
        axios.get('/api/posts').then((response) => {
          for(var i = 0; i < response.data.posts.length; i++) {
            this.posts.push(response.data.posts[i])
          }
        }, (error) => {
          console.log(error)
        })
      },
      createPost: function () {
       if (!this.newPost) return;
       
       axios.post('/api/posts', { post: { title: this.newPost } }).then((response) => {
         this.posts.unshift(response.data.post);
         this.newPost = '';
       }, (error) => {
         console.log(error)
       })
     }
    }
  }
</script>