import React from 'react'
import Navigation from '../../../../partials/Navigation'
import Header from '../../../../partials/Header'
import { Link } from 'react-router-dom'
import PostTable from './PostTable'
import { FiPlus } from 'react-icons/fi'
import ModalAddPost from './ModalAddPost'
import useQueryData from '../../../../custom-hook/useQueryData'
import { setIsAdd } from '../../../../../store/StoreAction'
import { StoreContext } from '../../../../../store/StoreContext'
import ModalError from '../../../../partials/modals/ModalError'
import Toast from '../../../../partials/Toast'
import Searchbar from '../../../../partials/Searchbar'

const Post = () => {

    const {store, dispatch} = React.useContext(StoreContext);
    const [isSearch, setIsSearch] = React.useState(false);
    const[keyword, setKeyword] = React.useState('');
    const [itemEdit, setItemEdit] = React.useState('');

    const {
        isLoading,
        isFetching,
        error,
        data: post,
      } = useQueryData(
        isSearch ? "/v1/post/search" : "/v1/post", // endpoint
        isSearch ? "post" : "get", // method
        "post", // key
        {
            searchValue: keyword
        }
      );

      const handleAdd = () => {
        dispatch(setIsAdd(true));
        setItemEdit(null)
  }

  return (
    <section className='flex overflow-x-hidden'>
        <Navigation />
        <main className='w-[calc(100%-250px)]'>
            <Header/>
            <div className='flex'>
                <div className={`main-wrapper px-4 transition-all py-3 sticky top-0 w-full`}>
                <div className='flex justify-between items-center'>
                    <h1>Post Database</h1>
                    <Searchbar setIsSearch={setIsSearch} setKeyword={setKeyword}/>
                    
                </div>

                <div className='tab flex justify-between items-center mt-8 border-b border-line mb-8'>
                    <h2>Search</h2>
                    <button className='btn btn--accent' onClick={handleAdd}>
                        <FiPlus /> New
                    </button>
                </div>

                <PostTable isLoading={isLoading} post={post} isFetching={isFetching} setItemEdit={setItemEdit}/>
            </div>
        </div>  
    </main>


    {store.isAdd && <ModalAddPost itemEdit={itemEdit}/>}

    {store.error && <ModalError position="center"/>}
    {store.success && <Toast/>}
    
    </section>
  )
}

export default Post