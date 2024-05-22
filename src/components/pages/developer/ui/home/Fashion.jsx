import React from 'react'
import Card from './Card'
import SectionHeader from './SectionHeader'

const Fashion = () => {
  return (
    <section className='feature py-10'> 
    <div className="container">
            <SectionHeader title="Fashion & Style" hasLink={true} link="/fashion"/>
            <div className='grid gap-10 md:grid-cols-3 mt-10'>
                <Card height="sm"/>
                <Card height="sm"/>
                <Card height="sm"/>
                <Card height="sm"/>
                <Card height="sm"/>
                <Card height="sm"/>
            </div>
    </div>
</section>
  )
}

export default Fashion