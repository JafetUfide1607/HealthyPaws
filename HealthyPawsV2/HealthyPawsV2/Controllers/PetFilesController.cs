﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using HealthyPawsV2.DAL;
using Microsoft.AspNetCore.Identity;

namespace HealthyPawsV2.Controllers
{
    public class PetFilesController : Controller
    {
        private readonly HPContext _context;
        private readonly UserManager<ApplicationUser> _userManager;

        public PetFilesController(HPContext context, UserManager<ApplicationUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        // GET: PetFiles
        public async Task<IActionResult> Index(string searchPetFile)
        {

            var pets = _context.PetFiles
                .Include(p => p.dueno)
                .Include(p => p.PetBreed)
                .ThenInclude(b => b.PetType).AsQueryable();

            if (!string.IsNullOrEmpty(searchPetFile))
            {
                int.TryParse(searchPetFile, out int parsedPetFileId);
                pets = pets.Where(p => p.name.Contains(searchPetFile) || p.petFileId == parsedPetFileId);
            }

            var hpContext = await pets.ToListAsync();

            if (hpContext.Count == 0)
            {
                ViewBag.NoResultados = true;
            }
            else
            {
                ViewBag.NoResultados = false;
            }

            return View(hpContext);
        }

        // GET: PetFiles/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var petFile = await _context.PetFiles
                .Include(p => p.PetBreed)
                .Include(p => p.dueno)
                .FirstOrDefaultAsync(m => m.petFileId == id);

            if (petFile == null)
            {
                return NotFound();
            }

            return View(petFile);
        }

        // GET: PetFiles/Create
        public IActionResult Create()
        {
            ViewData["petBreedId"] = new SelectList(_context.PetBreeds, "petBreedId", "name");
            ViewData["Users"] = new SelectList(_context.ApplicationUser, "Id", "name");
            ViewData["petTypeId"] = new SelectList(_context.PetTypes, "petTypeId", "name");

            return View();
        }

        // POST: PetFiles/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("petFileId,petBreedId,idNumber,name,petTypeId,gender,age,weight,creationDate,vaccineHistory,castration,description,status")] PetFile petFile)
        {
            petFile.creationDate = DateTime.Now.Date + DateTime.Now.TimeOfDay;
            petFile.status = true;

            if (ModelState.IsValid)
            {
                _context.Add(petFile);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["petBreedId"] = new SelectList(_context.PetBreeds, "petBreedId", "name", petFile.petBreedId);
            ViewData["Users"] = new SelectList(_context.ApplicationUser, "Id", "name", petFile.dueno);
            ViewData["petTypeId"] = new SelectList(_context.PetTypes, "petTypeId", "name", petFile.petTypeId);
            return View(petFile);
        }

        // GET: PetFiles/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var petFile = await _context.PetFiles.FindAsync(id);
            if (petFile == null)
            {
                return NotFound();
            }
            ViewData["petBreedId"] = new SelectList(_context.PetBreeds, "petBreedId", "name", petFile.petBreedId);
            ViewData["Users"] = new SelectList(_context.ApplicationUser, "Id", "name", petFile.dueno);
            ViewData["petTypeId"] = new SelectList(_context.PetTypes, "petTypeId", "name", petFile.petTypeId);
            return View(petFile);
        }

        // POST: PetFiles/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("petFileId,petBreedId,idNumber,name,petTypeId,gender,age,weight,creationDate,vaccineHistory,castration,description,status")] PetFile petFile)
        {
            if (id != petFile.petFileId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    var originalPetfile = await _context.PetFiles.AsNoTracking().FirstOrDefaultAsync(m => m.petFileId == id);

                    petFile.creationDate = originalPetfile.creationDate;

                    _context.Update(petFile);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    return NotFound();
                }

                return RedirectToAction(nameof(Index));
            }
            ViewData["petBreedId"] = new SelectList(_context.PetBreeds, "petBreedId", "name", petFile.petBreedId);
            ViewData["Users"] = new SelectList(_context.ApplicationUser, "Id", "name", petFile.dueno);
            ViewData["petTypeId"] = new SelectList(_context.PetTypes, "petTypeId", "name", petFile.petTypeId);
            return View(petFile);
        }

        // GET: PetFiles/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            {
                if (id == null)
                {
                    return NotFound();
                }

                var petfile = await _context.PetFiles.FindAsync(id);
                if (petfile == null)
                {
                    return NotFound();
                }

                petfile.status = false;
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
        }

        // POST: PetFiles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Delete(int id)
        {
            var petfile = await _context.PetFiles.FindAsync(id);
            if (petfile != null)
            {
                petfile.status = false;
            }

            return RedirectToAction(nameof(Index));
        }
    }
}
