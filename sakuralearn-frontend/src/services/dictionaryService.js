import API from './api';

export const dictionaryService = {
  getLibrary: () => {
    return API.get('/dictionary/library');
  },
  
  getKanjiList: (level, page = 0, size = 20) => {
    return API.get('/dictionary/kanji', { params: { level, page, size } });
  },
  
  getVocabList: (level, page = 0, size = 20) => {
    return API.get('/dictionary/vocab', { params: { level, page, size } });
  },
  
  getGrammarList: (level, page = 0, size = 20) => {
    return API.get('/dictionary/grammar', { params: { level, page, size } });
  },
  
  getKanjiDetail: (id) => {
    return API.get(`/dictionary/kanji/${id}`);
  },
  
  getVocabDetail: (id) => {
    return API.get(`/dictionary/vocab/${id}`);
  },
  
  getGrammarDetail: (id) => {
    return API.get(`/dictionary/grammar/${id}`);
  },

  searchGlobal: (query, page = 0, size = 10) => {
    return API.get('/dictionary/search', { params: { query, page, size } });
  },

  searchKanji: (query, page = 0, size = 20) => {
    return API.get('/dictionary/search/kanji', { params: { query, page, size } });
  },

  searchVocab: (query, page = 0, size = 20) => {
    return API.get('/dictionary/search/vocab', { params: { query, page, size } });
  },

  searchGrammar: (query, page = 0, size = 20) => {
    return API.get('/dictionary/search/grammar', { params: { query, page, size } });
  },

  getRelatedVocab: (character) => {
    return API.get('/dictionary/kanji/related-vocab', { params: { character } });
  }
};
